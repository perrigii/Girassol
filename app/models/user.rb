class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments_as_patient, class_name: "Appointment", foreign_key: :patient_id, dependent: :destroy
  has_many :appointments_as_therapist, class_name: "Appointment", foreign_key: :therapist_id, dependent: :destroy
  # has_many :appointments
  enum role: { patient: 'patient', therapist: 'therapist' }
  validates :name, presence: true, length: { maximum: 50 }
  validates :surname, presence: true, length: { maximum: 50 }
  validates :role, presence: true

  before_save { self.email = email.downcase }

  def self.specialty
    return ["psicólogo", "psiquiatra", "causa LGBTQI+"]
  end
end
