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
    @booking.user = current_user
    authorize @booking
    if @booking.save
      flash[:notice] = "You booked a f*cking spaceship!"
      redirect_to user_path(current_user)
    else
      render "spaceships/show"
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
   @booking = Booking.find(params[:id])
   authorize @booking
   @booking.update(booking_params)

   redirect_to user_path(current_user)
 end

 private

 def booking_params
  params.require(:booking).permit(:start_date, :end_date, :total_price, :status, :user, :spaceship)
end
end
