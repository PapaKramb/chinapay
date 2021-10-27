class Admin::UsersController < ApplicationController
  def index
    authorize!
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    authorize!

    if @user.destroy
      redirect_to admin_users_path
    end
  end
end
