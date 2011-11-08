require 'spec_helper'

describe "notes/_note.html.haml" do
  before(:each) do
    @note = assign(:note, stub_model(Note,
      :content => "Those are my lines"
    ))
    view.should_receive(:editable_note).and_return('XXXX')
  end

  it "renders correctly and shows the content" do
    render :partial => 'notes/note', :locals => { :note => @note }
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/XXXX/)
  end
end
