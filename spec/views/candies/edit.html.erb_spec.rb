require 'spec_helper'

describe "candies/edit.html.erb" do
  before(:each) do
    @candy = assign(:candy, stub_model(Candy,
      :delicious => false,
      :name => "MyString"
    ))
  end

  it "renders the edit candy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => candies_path(@candy), :method => "post" do
      assert_select "input#candy_delicious", :name => "candy[delicious]"
      assert_select "input#candy_name", :name => "candy[name]"
    end
  end
end
