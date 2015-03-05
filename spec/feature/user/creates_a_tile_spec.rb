require "rails_helper"

describe "user creates a new tile", type: :feature do

  it "and it is good" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).
      and_return(user)
    visit welcome_path
    click_link_or_button "new"
    fill_in "tile[title]", with: "Lovely new tile"
    fill_in "tile[description_text]", with: "Describe Link"
    fill_in "tile[link_text]", with: "be link"
    expect(page).to have_content("Lovley new tile")
  end
end
