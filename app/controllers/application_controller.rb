class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate

  private

  def authenticate
    redirect_to login_url unless current_user
  end

  def current_room
    @room ||= Room.find(session[:current_room]) if session[:current_room]
  end
  
  def current_user
    @user ||= User.find(session[:current_user]) if session[:current_user]
  end

  helper_method :current_user, :current_room
end
