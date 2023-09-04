class AddPatientAndTherapistToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :patient, foreign_key: { to_table: :users }
    add_reference :appointments, :therapist, foreign_key: { to_table: :users }
  end
end
