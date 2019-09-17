class ApplicationController < ActionController::Base
	before_action :configure_devise_parameters, if: :devise_controller?
	protect_from_forgery with: :exception
	def configure_devise_parameters
  		devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :is_alive, :email, :password, :password_confirmation)}
  		devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :is_alive, :email, :password, :password_confirmation, :current_password)}
	end
	def access_denied(exception)
    	redirect_to admin_organizations_path, alert: exception.message
  	end
end
