require 'rails_helper'

describe "User can click on Blog and Community" do
  scenario "Links to the blog and community page" do
    visit "/"
    click_on "Blog and Community"
    expect(current_path).to eq("/blogs")
  end
end