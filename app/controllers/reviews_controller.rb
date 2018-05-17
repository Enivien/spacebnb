class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @spaceship = @booking.spaceship
    authorize @review
    @review.save
    if @review.save
      redirect_to spaceship_path(@spaceship)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :stars, :booking)
  end
end
