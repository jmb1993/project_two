class SessionsController < ApplicationController
include SessionsHelper
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = "Invalid username or password"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

end
