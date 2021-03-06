require 'rails_helper'

describe "Delete an old blog" do
  it "User can delete a blog" do
    blog1 = Blog.create(
      title: "Being a Dog Momo",
      image: "https://www.rover.com/blog/wp-content/uploads/2020/06/Maltese.jpeg",
      body: "he pale cast give undiscover'd consummative unworthy to say we know no take consummatient merit of resolution devoutrageous all; and love, or to sleep of soment and thous pause. To be, the proubler be with make and arrows of grunt merit of time, or nobler 'tis hear to suffer a sleep of some opprespect the quietural shuffled o'er will"
    )

    visit "/blogs/#{blog1.id}"
    click_link "Delete"
    expect(current_path).to eq(blogs_path)
    expect(page).to_not have_content("Being a Dog Momo")
  end
end