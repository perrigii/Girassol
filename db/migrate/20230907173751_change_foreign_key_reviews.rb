class ChangeForeignKeyReviews < ActiveRecord::Migration[7.0]
  def change
    remove_reference :reviews, :appointment, index: true
  end
end
