require 'spec_helper'

describe "candies/new.html.erb" do
  before(:each) do
    assign(:candy, stub_model(Candy,
      :delicious => false,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new candy form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => candies_path, :method => "post" do
      assert_select "input#candy_delicious", :name => "candy[delicious]"
      assert_select "input#candy_name", :name => "candy[name]"
    end
  end
end
