class Chatroom < ApplicationRecord
  belongs_to :patient, class_name: "User"
  belongs_to :therapist, class_name: "User"
  has_many :messages, dependent: :destroy
end
