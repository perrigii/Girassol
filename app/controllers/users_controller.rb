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
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :name, :surname, :birthdate, :role, :description, :specialty, :photo)
  end
end
