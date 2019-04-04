class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
   def authenticate_user!
    unless logged_in?
     redirect_to new_session_path, :notice => 'Please, Login to access the page you want to visit, if you do not have account, create it through Sign up'
   end
   end
   
   def delete
     session.delete(:user_id)
     @current_user = nil
     redirect_to site_home_path
   end
end
