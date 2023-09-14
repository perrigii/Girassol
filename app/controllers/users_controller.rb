class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    if params[:query].present?
      @query = params[:query]
      @users = User.where("name LIKE ?", "%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @users = User.where(role: "therapist")
    end
    @appointment = Appointment.new
  end

  def show
    @user = User.find(params[:id])
    if @user.role == 'therapist' && current_user.role == 'patient'
      @appointment = Appointment.where(patient_id: current_user.id, therapist_id: @user.id).last
      @reviews = @user.reviews_as_therapist
      @reviews_total = Review.where(therapist: @user)
      @average_rating = @reviews_total.map(&:rating).sum / @reviews_total.count unless @reviews_total.empty?
      @appointment_new = Appointment.new
      @patient = current_user
      @review_new = Review.new
    end
    # if @appointment.present?
    #   @appointment.patient = @patient
    # end

    # @appointment = Appointment.new
    # @patient = current_user
    # @therapist = User.find(params[:user_id])
    # @reviews = Review.where(patient_id: @patient, therapist_id: @therapist).order("created_at DESC")

  end

  def profile
    @user = current_user
  end

  private

  def set_user
    # @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :name, :surname, :birthdate, :role, :description, :specialty, :photo)
  end
end
