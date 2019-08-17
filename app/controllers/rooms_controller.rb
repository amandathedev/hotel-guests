class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def show
    find_room
  end

  def edit
    find_room
  end

  def create
    @room = Room.create(room_params)
    redirect_to @room
  end

  def update
    @room = Room.find(params[:id])
    @room.update(room_params)
    redirect_to @room
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to :room_path
  end

  private

  def find_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:number, :guest_id, :hotel_id)
  end
end
