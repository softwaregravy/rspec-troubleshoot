require 'spec_helper'

describe "candies/show.html.erb" do
  before(:each) do
    @candy = assign(:candy, stub_model(Candy,
      :delicious => false,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
