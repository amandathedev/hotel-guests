class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def show
    find_guest
  end

  def edit
    find_guest
  end

  def create
    @guest = Guest.create(guest_params)
    redirect_to @guest
  end

  def update
    find_guest
    @guest.update(guest_params)
    redirect_to @guest
  end

  def destroy
    find_guest.destroy
    redirect_to :guest_path
  end

  private

  def find_guest
    @guest = Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:name, :favorite_city, :num_of_bookings)
  end
end
