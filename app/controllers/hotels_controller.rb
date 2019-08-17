class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def new
    @hotel = Hotel.new
  end

  def show
    find_hotel
  end

  def edit
    find_hotel
  end

  def create
    @hotel = Hotel.create(hotel_params)
    redirect_to @hotel
  end

  def update
    find_hotel
    @hotel.update(hotel_params)
    redirect_to @hotel
  end

  def destroy
    find_hotel.destroy
    redirect_to :hotel_path
  end

  private

  def find_hotel
    @hotel = Hotel.find(params[:id])
  end

  def hotel_params
    params.require(:hotel).permit(:name, :age, :capacity)
  end
end
