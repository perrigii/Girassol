class RoomsController < ApplicationController
  def create
    @room = Room.find_or_create_by(room_params)
    if @room.id
      redirect_to room_path(@room)
    else
      redirect_to root_path
    end
  end

  def show
    @room = Room.find_by(id: params[:id])
  end

  private

  def room_params
    params.require(:room).permit(:name)
  end
end
