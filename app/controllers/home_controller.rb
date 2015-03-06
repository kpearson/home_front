class HomeController < ApplicationController
  def index
    #@tiles = User.find(2).tiles
    @tiles = [
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
  end
end
