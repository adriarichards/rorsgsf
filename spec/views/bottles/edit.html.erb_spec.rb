require 'spec_helper'

describe "bottles/edit.html.erb" do
  before(:each) do
    @bottle = assign(:bottle, stub_model(Bottle,
      :name => "MyString",
      :year => 1,
      :photo_link => "MyString"
    ))
  end

  it "renders the edit bottle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bottles_path(@bottle), :method => "post" do
      assert_select "input#bottle_name", :name => "bottle[name]"
      assert_select "input#bottle_year", :name => "bottle[year]"
      assert_select "input#bottle_photo_link", :name => "bottle[photo_link]"
    end
  end
end
