class Link < ActiveRecord::Base
  belongs_to :tile

  def as_json(options = {})
    { url: url, description: description }
  end
end
