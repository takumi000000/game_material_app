# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  
  #ログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
    @user = User.find(current_user.id)
    if @user.check_job == 1
      "/requester/#{current_user.id}"   
    elsif @user.check_job == 2
      "/contractor/#{current_user.id}"
    end
  end
  #ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource)
    root_path
  end 
end
