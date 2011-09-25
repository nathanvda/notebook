require 'spec_helper'

describe "notes/index.html.haml" do
  before(:each) do
    assign(:notes, [
      stub_model(Note,
        :title => "Title",
        :content => "Content",
        :book_id => 1
      ),
      stub_model(Note,
        :title => "Title",
        :content => "Content",
        :book_id => 1
      )
    ])
  end

  it "renders a list of notes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
