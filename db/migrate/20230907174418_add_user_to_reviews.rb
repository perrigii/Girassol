class AddUserToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :therapist, foreign_key: { to_table: :users }
  end
end
