require 'rails_helper'

describe "user signs up", type: :feature do

  it "and is redirected to the home_path" do
    visit root_path
    click_link_or_button "sign up"
    fill_in "sign_up[user_name]", with: "New User"
    fill_in "sign_up[email]", with: "user_email"
    fill_in "sign_up[password]", with: "password"
    fill_in "sign_up[password_confirmation]", with: "password"
    expect(page).to have_content("Welcome New User")
  end
end
