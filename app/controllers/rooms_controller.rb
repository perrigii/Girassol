class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.find_or_create_by(room_params)
    if @room.id
      respond_to do |format|
        format.turbo_stream {redirect_to room_path(@room)}
        format.html {redirect_to room_path(@room)}
          # render turbo_stream: turbo_stream.replace("home", partial: "rooms/show", locals: {room: @room})
          # render turbo_stream: turbo_stream.redirect(room_path(@room))
      end
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
