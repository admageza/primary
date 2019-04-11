class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   
  include SessionsHelper
  
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  protected
  def authenticate_user!
    redirect_to( new_session_path, alert: 'You must login or create new account') unless user_signed_in?
  end
   
   def delete
     session.delete(:user_id)
     @current_user = nil
     redirect_to site_home_path
   end
end
