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
    @review.patient_id = @patient.id
    # @review.appointments_id = Appointment.where(patient_id: @patient.id, therapist_id: @therapist.id).last.id
    respond_to do |format|
      if @review.save
        format.html { redirect_to user_path(@therapist), notice: 'Sua avaliação foi postada!' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to user_path(@review.user)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :patient_id)
  end
end
