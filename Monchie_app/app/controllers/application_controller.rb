class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  helper :all
  
  def current_ability
  	 @current_ability ||= Ability.new(current_user)
  end
  protected
  def configure_permitted_parameters

  #devise_parameter_sanitizer.for(:sign_up) << :username
  
  devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:username, :email, :password, :password_confirmation, roles:[])}
  
  
  
  devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:email, :password, :remember_me)}
  end
  
  
end
