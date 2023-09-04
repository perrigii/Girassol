class AddColumnNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :string
    add_column :users, :username, :string
    add_column :users, :password, :string
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :birthdate, :date
  end
end
