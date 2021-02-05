require 'rails_helper'

describe Blog do
  describe "validations" do
    it {should validate_presence_of :title}
    it {should validate_presence_of :image}
    it {should validate_presence_of :body}
  end
end