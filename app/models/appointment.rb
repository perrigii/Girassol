class Appointment < ApplicationRecord
  belongs_to :patient, class_name: 'User', foreign_key: "patient_id"
  belongs_to :therapist, class_name: 'User', foreign_key: "therapist_id"
  belongs_to :review, optional: true

  has_one :review
end
