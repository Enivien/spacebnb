class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]

  def show
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    user.save
    if user.save
      redirect_to user_path(user)
    else
      render :new
    end

  private

  def user_params
    params.require(:user).permit(:name, :avatar, :description)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
