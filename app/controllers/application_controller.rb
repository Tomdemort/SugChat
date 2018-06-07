class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index]
  def configure_permitted_parameters
    added_attrs = [:name]
    devise_parameter_sanitizer.permit(:sign_in, keys: added_attrs)
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
  end
  def after_sign_in_path_for(resource)
    chat_rooms_path(resource)
  end
  def after_sign_out_path_for(resource)
    chat_rooms_path(resource)
  end
end
