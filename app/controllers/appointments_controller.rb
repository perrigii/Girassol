class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @therapist = User.find(params[:user_id])
    @appointments = Appointment.where(patient_id: current_user.id, therapist_id: @therapist.id)
  end

  def general_appointments
    if current_user.role == 'patient'
      @appointments = current_user.appointments_as_patient
    else
      @appointments = current_user.appointments_as_therapist
    end
  end

  def new
    @appointment = Appointment.new
    @patient = current_user
    @therapist = User.find(params[:user_id])
  end

  def show
    @appointment = Appointment.find(params[:id])
    @reviews = Review.where(patient_id: @patient, therapist_id: @therapist).order("created_at DESC")
    @room = Room.new
  end

  def create
    @patient = current_user
    @therapist = User.find(params[:user_id])
    @appointment = Appointment.new(appointment_params)
    #@review = Review.new
    @appointment.patient = @patient
    @appointment.therapist = @therapist
    if @appointment.save
      #@review.appointment = @appointment
      #@review.save
      redirect_to appointment_path(@appointment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy!
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date_time, :patient_id, :therapist_id)
  end
end
