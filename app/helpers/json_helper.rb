module JsonHelper
  def tiles_to_json(tiles)
    tiles.map do |tile|
      TileSerializer.new(tile, root: false).as_json
    end.to_json
  end
end
