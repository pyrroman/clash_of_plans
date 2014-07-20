class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  before_filter :authenticate

private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate
    redirect_to signin_url, alert: "Not authorized" if current_user.nil?
  end
end
