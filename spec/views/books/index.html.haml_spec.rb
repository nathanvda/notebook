require 'spec_helper'

describe "books/index.html.haml" do
  before(:each) do
    @books = [Factory(:book)]
  end

  it "renders the index without error" do
    render
  end
end