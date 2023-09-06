class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @appointments = current_user.appointments
  end

  def new
    @appointment = Appointment.new
    @patient = current_user
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
    @patient = User.find(params[:patient_id])
    @therapist = User.find(params[:therapist_id])
    @appointment = Appointment.new(appointment_params)
    @appointment.patient = @patient
    @appointment.therapist = @therapist
    if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to user_path(@appointment.user)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:patient_id, :therapist_id)
  end
end
