require 'spec_helper'

describe "bottles/show.html.erb" do
  before(:each) do
    @bottle = assign(:bottle, stub_model(Bottle,
      :name => "Name",
      :year => 1,
      :photo_link => "Photo Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Photo Link/)
  end
end
