class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index]
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in){|u|
      u.permit(:email, :name, :password, :password_confirmation)}
    devise_parameter_sanitizer.permit(:sign_up){|u|
      u.permit(:email, :name, :password, :password_confirmation)}
  end
  def after_sign_in_path_for(resource)
    chat_rooms_path(resource)
  end
  def after_sign_out_path_for(resource)
    chat_rooms_path(resource)
  end
end
