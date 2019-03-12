class SessionsController < ApplicationController
  include Accessible
  skip_before_action :check_user, only: :destroy
  
  def new
    if @current_user.present?
      redirect_to user_path(user.id)
    end
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      flash[:danger] = 'Login failed! your credentials are invalid. if you do not have account, create new'
      redirect_to new_session_path
    end
  end
  
  def destroy
    session.delete(:user_id)
    flash[:notice] = 'You logged out'
    redirect_to new_session_path
  end
end
