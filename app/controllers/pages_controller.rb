class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @room = Room.new
  end
end
