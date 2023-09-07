class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :session_token
      t.string :generated_token

      t.timestamps
    end
  end
end
