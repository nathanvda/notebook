require 'spec_helper'

describe "books/index.html.haml" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :title => "Title",
        :description => "Description",
        :user_id => 1
      ),
      stub_model(Book,
        :title => "Title",
        :description => "Description",
        :user_id => 1
      )
    ])
  end

  it "renders a list of books" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
