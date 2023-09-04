class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.string :status
      t.boolean :is_voluntary

      t.timestamps
    end
  end
end
