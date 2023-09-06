class ChatroomsController < ApplicationController
  def index
    if current_user.role == 'patient'
      @chatrooms = Chatroom.where(patient_id: current_user.id)
    else
      @chatrooms = Chatroom.where(therapist_id: current_user.id)
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
