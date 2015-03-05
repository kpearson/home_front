class AddTileToLink < ActiveRecord::Migration
  def change
    add_column :links, :tile_id, :integer
  end
end
