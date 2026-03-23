class SamlIdpController < ApplicationController
  include SamlIdp::Controller

  skip_before_action :verify_authenticity_token, only: [:create, :logout]

  # GET /saml/metadata
  def show
    render xml: SamlIdp::MetadataBuilder.new.raw
  end

  # GET /saml/auth - ログインフォームを表示、または既ログイン済みなら直接レスポンス
  def new
    decode_request(params[:SAMLRequest], params[:Signature], params[:SigAlg], params[:RelayState])

    user = find_current_user
    if user
      @saml_response = encode_response(user)
      @relay_state = params[:RelayState]
      render :saml_post, layout: false
    else
      render :new
    end
  end

  # POST /saml/auth - 認証してSAMLレスポンスを返す
  def create
    decode_request(params[:SAMLRequest], params[:Signature], params[:SigAlg], params[:RelayState])

    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      @saml_response = encode_response(user)
      @relay_state = params[:RelayState]
      render :saml_post, layout: false
    else
      flash.now[:alert] = "メールアドレスまたはパスワードが正しくありません"
      render :new, status: :unprocessable_entity
    end
  end

  # GET/POST /saml/logout - シングルログアウト
  def logout
    if params[:SAMLRequest]
      decode_request(params[:SAMLRequest], params[:Signature], params[:SigAlg], params[:RelayState])
      user = find_current_user
      session[:user_id] = nil
      @saml_response = encode_logout_response(user)
      @relay_state = params[:RelayState]
      render :saml_post, layout: false
    else
      session[:user_id] = nil
      redirect_to root_path, notice: "ログアウトしました"
    end
  end

  private

  def find_current_user
    User.find_by(id: session[:user_id])
  end
end
