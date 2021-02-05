require 'rails_helper'

describe "Create a new blog" do
  it "User can create a new blog" do
    visit "/blogs/new"

    title = "Boop"
    image = "image.png"
    body = "I love noses"

    fill_in :title, with: title
    fill_in :image, with: image
    fill_in :body, with: body

    click_on "Create Post"
    expect(current_path).to eq(blogs_path)
    expect(page).to have_content("Boop")
  end
end