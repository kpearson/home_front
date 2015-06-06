require "rails_helper"

RSpec.describe "Creating tiles", :type => :request do
  let(:tile){ Tile.create( title: "Foo" ) }

  it "update a Tile title and show the tile" do
    put "/tiles/#{tile.id}", update_params
    binding.pry
    expect(false).to eq(true)
  end

  def update_params
    {
      id: tile.id,
      title: "Bar",
      links: []
    }

  end
end
