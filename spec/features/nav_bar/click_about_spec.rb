require 'rails_helper'

describe "User can click on About Me" do
  scenario "Links to the about me page" do
    visit "/"
    click_on "About Me"
    expect(current_path).to eq("/about")
  end
end