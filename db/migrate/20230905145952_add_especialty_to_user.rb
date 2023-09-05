class AddEspecialtyToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :specialty, :string
  end
end
