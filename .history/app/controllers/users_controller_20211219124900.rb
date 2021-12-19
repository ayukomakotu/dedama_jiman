class UsersController < ApplicationController
  def index
    debugger
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
  end
end
