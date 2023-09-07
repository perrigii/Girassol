class Review < ApplicationRecord
  belongs_to :appointment
  belongs_to :therapist, class_name: "User"

  validates :rating, presence: true, length: { maximum: 5 }
  validates :comment, presence: true, length: { maximum: 140 }
end
