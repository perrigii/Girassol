class Appointment < ApplicationRecord
  belongs_to :patient, class_name: 'User'
  belongs_to :therapist, class_name: 'User'

  has_one :review
end
