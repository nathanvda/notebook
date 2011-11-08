require 'spec_helper'

describe "books/edit.html.haml" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "MyString",
      :description => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path(@book), :method => "post" do
      assert_select "input#book_title", :name => "book[title]"
      assert_select "input#book_description", :name => "book[description]"
    end
  end
end
