class UsersController < ApplicationController
  # GET /signup
  def new
  end

  # POST /signup
  def create
    @user = User.new(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "ユーザー登録が完了しました"
    else
      flash.now[:alert] = @user.errors.full_messages.join(", ")
      render :new, status: :unprocessable_entity
    end
  end
end
