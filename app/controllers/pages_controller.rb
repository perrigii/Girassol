class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def search
    if params[:search][:query].present? && params[:search][:category].present?
      @name = params[:search][:query]
      @specialty = params[:search][:category]
      @users = User.where("name ILIKE ? AND specialty ILIKE ?", "%#{@name}%", "%#{@specialty}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    elsif params[:search][:category].present?
      @specialty = params[:search][:category]
      @users = User.where("specialty ILIKE ?", "%#{@specialty}%")
    elsif params[:search][:query].present?
      @users = User.where("name ILIKE ?", "%#{params[:search][:query]}%")
    else
      @users = User.where(role: "therapist")
    end
  end
end
