class AddPatientToReview < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :patient, foreign_key: { to_table: :users }
  end
end
