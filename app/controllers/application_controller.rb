class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  before_action :set_should_render_navbar

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :username, :avatar])

    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :name, :username, :avatar])
  end

  def set_should_render_navbar
    @should_render_navbar = true
  end
end
