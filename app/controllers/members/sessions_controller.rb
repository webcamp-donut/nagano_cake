# frozen_string_literal: true

class Members::SessionsController < Devise::SessionsController
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
  protected

  def reject_user
    @member = Member.find_by(email: params[:email].downcase)
    if @user
      if (@member.valid_password?(params[:user][:password]) && (@user.active_for_authentication? == false))
        flash[:error] = "退会済みです。"
        redirect_to new_member_session_path
      end
    else
      flash[:error] = "必須項目を入力してください。"
    end
  end


  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
