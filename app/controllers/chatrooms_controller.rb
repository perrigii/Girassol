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

  def create
    if params[:therapist].present?
      @chatroom = Chatroom.new(patient_id: params[:user_id], therapist_id: current_user.id, name: "#{User.find(params[:user_id]).name}")
    else
      @chatroom = Chatroom.new(patient_id: current_user.id, therapist_id: params[:user_id], name: "#{User.find(params[:user_id]).name}")
    end
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render user_path(@chatroom.therapist_id)
    end
  end
end
