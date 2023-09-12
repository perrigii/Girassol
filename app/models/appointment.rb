class Appointment < ApplicationRecord
  belongs_to :patient, class_name: 'User', foreign_key: "patient_id"
  belongs_to :therapist, class_name: 'User', foreign_key: "therapist_id"

  validates :start_time, :end_time, presence: true
end
