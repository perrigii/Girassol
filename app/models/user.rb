class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments_as_patient, class_name: "Appointment", foreign_key: :patient_id
  has_many :appointments_as_therapist, class_name: "Appointment", foreign_key: :therapist_id
end
