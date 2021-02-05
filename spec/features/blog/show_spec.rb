require 'rails_helper'

describe "Blog Show Page" do
  it "Links to a blog's show page" do
    blog1 = Blog.create(
      title: "Being a Dog Momo",
      image: "https://www.rover.com/blog/wp-content/uploads/2020/06/Maltese.jpeg",
      body: "he pale cast give undiscover'd consummative unworthy to say we know no take consummatient merit of resolution devoutrageous all; and love, or to sleep of soment and thous pause. To be, the proubler be with make and arrows of grunt merit of time, or nobler 'tis hear to suffer a sleep of some opprespect the quietural shuffled o'er will"
    )

    visit blogs_path
    click_on "Being a Dog Momo"
    expect(current_path).to eq("/blogs/#{blog1.id}")
    expect(current_page).to have_content(blog1.title)
    expect(current_page).to have_content(blog1.body)
  end
end