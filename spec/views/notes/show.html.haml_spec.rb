require 'spec_helper'

describe "notes/show.html.haml" do
  before(:each) do
    @note = assign(:note, stub_model(Note,
      :title => "Title",
      :content => "Content",
      :book_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
