class SessionsController < ApplicationController
  skip_before_filter :authenticate

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Welcome back!"
    else
      flash.now.alert = "Invalid email and password combination"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
