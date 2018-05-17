class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    @review.save
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :stars, :booking)
  end
end
