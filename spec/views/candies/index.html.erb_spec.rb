require 'spec_helper'

describe "candies/index.html.erb" do
  before(:each) do
    assign(:candies, [
      stub_model(Candy,
        :delicious => false,
        :name => "Name"
      ),
      stub_model(Candy,
        :delicious => false,
        :name => "Name"
      )
    ])
  end

  it "renders a list of candies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
