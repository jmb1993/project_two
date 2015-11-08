class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @list = List.new
@list.user_id = @user.id
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to @user
    else
      render new_user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to new_users_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password,)
  end

end
