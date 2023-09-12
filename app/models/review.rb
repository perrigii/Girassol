class Review < ApplicationRecord
  belongs_to :therapist, class_name: 'User', foreign_key: "therapist_id"
  belongs_to :patient, class_name: 'User', foreign_key: "patient_id"

  validates :rating, presence: true, length: { maximum: 5 }
  validates :comment, presence: true, length: { maximum: 140 }
end
