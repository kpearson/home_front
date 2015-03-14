class HomeController < ApplicationController
  def index
    @tiles = current_user.tiles
  end
end
