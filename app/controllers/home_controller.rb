class HomeController < ApplicationController
  def index
    @tiles = current_user.tiles
    @repos = Repo.all
  end
end
