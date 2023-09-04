class AddAppointmentReferenceToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :appointment, null: false, foreign_key: true
  end
end
