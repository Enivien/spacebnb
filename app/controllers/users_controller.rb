class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only:
  # before_action :set_user, only: [:show, :destroy]

  def show
    @user = User.find(params[:id])
    @bookings = Booking.new
    authorize @user
  end

  def new
    @user = User.new
    authorize @user
  end

  def create
    user = User.new(user_params)
    authorize @user
    user.save
    if user.save
      redirect_to user_path(user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar, :avatar_cache, :description)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
