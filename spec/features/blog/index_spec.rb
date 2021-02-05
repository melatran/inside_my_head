require 'rails_helper'

describe "Blog and Community" do
  it "Displays all blogs" do
    blog1 = Blog.create(
      title: "Being a Dog Momo",
      image: "https://www.rover.com/blog/wp-content/uploads/2020/06/Maltese.jpeg",
      body: "he pale cast give undiscover'd consummative unworthy to say we know no take consummatient merit of resolution devoutrageous all; and love, or to sleep of soment and thous pause. To be, the proubler be with make and arrows of grunt merit of time, or nobler 'tis hear to suffer a sleep of some opprespect the quietural shuffled o'er will"
    )
    
    blog2 = Blog.create(
      title: "Hearbreak",
      image: "https://ichef.bbci.co.uk/images/ic/640x360/p06jyxlq.jpg",
      body: "Tell me what you think when you see this word"
    )

    visit blogs_path
    
    expect(page).to have_content(blog1.title)
    expect(page).to have_content(blog1.body)
    expect(page).to have_content(blog2.title)
    expect(page).to have_content(blog2.body)
  end
end