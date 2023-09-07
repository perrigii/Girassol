class Review < ApplicationRecord
  belongs_to :appointment

  validates :rating, presence: true, length: { maximum: 5 }
  validates :comment, presence: true, length: { maximum: 140 }
end
