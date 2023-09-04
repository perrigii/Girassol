class AddPatientAndTherapistToChatroom < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :patient, foreign_key: { to_table: :users }
    add_reference :chatrooms, :therapist, foreign_key: { to_table: :users }
  end
end
