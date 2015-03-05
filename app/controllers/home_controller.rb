class HomeController < ApplicationController
  def index
    @tiles = User.find(2).tiles
  end
end
