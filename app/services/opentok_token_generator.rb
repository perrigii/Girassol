class OpentokTokenGenerator < ApplicationService
  require "opentok"

  def initialize(room)
    @room = room
  end

  def call
   opentok = OpenTok::OpenTok.new ENV['API_KEY'], ENV['SECRET_KEY']
   session = opentok.create_session media_mode: :routed
   @room.session_token = session.session_id
   @room.generated_token = session.generate_token
  end
end
