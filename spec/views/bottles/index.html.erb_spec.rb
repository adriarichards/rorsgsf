require 'spec_helper'

describe "bottles/index.html.erb" do
  before(:each) do
    assign(:bottles, [
      stub_model(Bottle,
        :name => "Name",
        :year => 1,
        :photo_link => "Photo Link"
      ),
      stub_model(Bottle,
        :name => "Name",
        :year => 1,
        :photo_link => "Photo Link"
      )
    ])
  end

  it "renders a list of bottles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Photo Link".to_s, :count => 2
  end
end
