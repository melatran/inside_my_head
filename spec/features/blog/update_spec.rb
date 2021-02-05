require 'rails_helper'

describe "Update an old blog" do
  it "User can update a blog" do
    blog1 = Blog.create(
      title: "Being a Dog Momo",
      image: "https://www.rover.com/blog/wp-content/uploads/2020/06/Maltese.jpeg",
      body: "he pale cast give undiscover'd consummative unworthy to say we know no take consummatient merit of resolution devoutrageous all; and love, or to sleep of soment and thous pause. To be, the proubler be with make and arrows of grunt merit of time, or nobler 'tis hear to suffer a sleep of some opprespect the quietural shuffled o'er will"
    )

    visit ("/blogs/#{blog1.id}")
    expect(page).to have_link("Edit")
    click_link "Edit"
    expect(current_path).to eq("/blogs/#{blog1.id}/edit")

    fill_in :title, with: "Being a Dog"

    click_on "Update Blog"

    expect(current_path).to eq("/blogs/#{blog1.id}")
    expect(page).to have_content("Being a Dog")
  end
end