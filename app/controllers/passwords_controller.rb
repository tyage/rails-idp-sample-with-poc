class PasswordsController < ApplicationController
  before_action :require_login

  # GET /password/edit
  def edit
  end

  # PATCH /password
  def update
    if params[:password].blank?
      flash.now[:alert] = "新しいパスワードを入力してください"
      render :edit, status: :unprocessable_entity
    elsif params[:password] != params[:password_confirmation]
      flash.now[:alert] = "新しいパスワードが一致しません"
      render :edit, status: :unprocessable_entity
    elsif @current_user.update(password: params[:password], password_confirmation: params[:password_confirmation])
      redirect_to root_path, notice: "パスワードを変更しました"
    else
      flash.now[:alert] = @current_user.errors.full_messages.join(", ")
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def require_login
    @current_user = User.find_by(id: session[:user_id])
    unless @current_user
      redirect_to login_path, alert: "ログインしてください"
    end
  end
end
