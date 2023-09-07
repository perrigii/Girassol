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
  end

  def show
    @user = User.find(params[:id])
    if @user.role == 'therapist'
      @appointment = Appointment.where(patient_id: current_user.id, therapist_id: @user.id).last
      @reviews = @user.reviews_as_therapist
    end
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
