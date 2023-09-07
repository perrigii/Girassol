class Room < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  before_create :generate_room_token
  before_create :strip_name

  def strip_name
      self.name = name.downcase.split(' ').join('-')
  end

  def generate_room_token
    OpentokTokenGenerator.call(self)
  end
end
