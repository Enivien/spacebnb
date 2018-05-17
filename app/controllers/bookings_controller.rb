class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new(booking_params)
    @booking.spaceship = @spaceship

# CHANGE TO CURRENT USER
    @booking.user_id = 1
    authorize @booking
    if @booking.save
      flash[:succes]
      redirect_to user_path(current_user)
    else
      render "spaceships/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :status, :user, :spaceship)
  end
end
