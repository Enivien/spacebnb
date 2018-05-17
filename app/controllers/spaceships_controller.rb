class SpaceshipsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_spaceship, only: [:show, :destroy]

  def index
    @spaceships = Spaceship.all
  end

  def show
  end

  def new
    @spaceship = Spaceship.new
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user = current_user
    @spaceship.save
    if @spaceship.save
      redirect_to spaceship_path(@spaceship)
    else
      render :new
    end
  end

  def destroy
    @spaceship.destroy
    redirect_to spaceships_path
  end

  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :capacity, :price, :location, :picture, :picture_cache)
  end

  def set_spaceship
    @spaceship = Spaceship.find(params[:id])
  end
end
