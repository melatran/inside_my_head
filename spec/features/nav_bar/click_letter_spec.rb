require 'rails_helper'

describe "User can click on Letter to No One" do
  scenario "Links to the dear no one page" do
    visit "/"
    click_on "Letter to No One"
    expect(current_path).to eq("/dear_no_one")
  end
end 