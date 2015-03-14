class TilesController < ApplicationController
  def index
    tiles = current_user.tiles.all
    render json: {
      tiles: tiles.map { |tile| tile.to_json }
    }
  end

  def new
    @tile = Tile.new
    @links = @tile.links.build
  end

  def create
    # require 'pry'; binding.pry
    @tile = Tile.new(tile_params)
    if @tile.save
      redirect_to home_path
    else
      render :new
    end
  end

  def update
    #tile = current_user.tiles.find(params[:id])
    tile = Tile.find(params[:id])
    tile.links.update_attributes(tile_params)

    if tile.save
      render json: tile
    else
      # ...
    end
  end

  private

  def tile_params
    params.permit(:title, links: [:description, :url])
  end

  def link_params
    params.permit(:description, :url)
  end
end
