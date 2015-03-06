class TilesController < ActionController::Base
  def index
=begin
    tiles = [
      {
        "title" => "tile1",
        "links" => [
          {
            "description" => "First link",
            "url" => "example.com"
          },
          {
            "description" => "Second link",
            "url" => "example.com"
          }
        ]
      },
      {
        "title" => "tile2",
        "links" => [
          {
            "description" => "Third link",
            "url" => "example.com"
          },
          {
            "description" => "Forth link",
            "url" => "example.com"
          }
        ]
      }
    ]
    render json: {tiles: tiles }
=end

    tiles = Tile.all
    render json: {
      tiles: tiles.map { |tile| tile.to_json }
    }
  end
end
