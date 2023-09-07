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
    @user = current_user
    @appointment = Appointment.where(patient_id: current_user.id, therapist_id: @user.id).last
  end

  private

  def set_user
    # @user = User.find(params[:id])
  end
end
