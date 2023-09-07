class ReviewsController < ApplicationController
  before_action :authenticate_user!

  # def index
  #   @reviews = current_user.reviews
  # end

  def new
    @review = Review.new
    @patient = current_user
    @therapist = User.find(params[:user_id])
    @appointment = Appointment.where(patient_id: @patient.id, therapist_id: @therapist.id).last
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    @patient = current_user
    @therapist = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.therapist_id = @therapist.id
    @review.appointments_id = Appointment.where(patient_id: @patient.id, therapist_id: @therapist.id).last.id
    if @review.save
      redirect_to user_path(@therapist), notice: 'Review was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to user_path(@review.user)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
