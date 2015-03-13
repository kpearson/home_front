class Tile < ActiveRecord::Base
  belongs_to :user
  has_many :links

  accepts_nested_attributes_for :links, allow_destroy: true

  def as_json(options = {})
    {
      id: id,
      title: title,
      links: links
    }
  end
end
