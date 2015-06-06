class TileSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :links

  def links
    object.links.order(:id)
  end
end

