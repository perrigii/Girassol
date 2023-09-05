class AddReferenceToMessages < ActiveRecord::Migration[7.0]
  def change
    add_reference :messages, :user
  end
end
