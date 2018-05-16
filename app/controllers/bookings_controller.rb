class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.new(booking_params)
    booking.save
    if booking.save
      redirect_to booking_path(booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :status, :user, :spaceship)
  end
end
