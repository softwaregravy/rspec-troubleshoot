
require 'spec_helper'

describe ApplicationController do 
  describe "#redirect_to_candies" do 
    controller do 
      before_filter :redirect_to_candies 
      def index 
      end 
    end 

    it "should redirect to candies" do 
      get :index 
      response.should redirect_to candies_url
    end 
  end 

  describe "beware of Rails Cache" do 
    it "can be fine with a happy case" do 
      subject.i_assign_a_value 
      assigns(:my_value).should eq(5)
    end 

    it "can cause problems when testing error cases" do 
      subject.stub!(:i_can_be_stubbed_to_raise_an_error).and_raise("I'm an error")
      lambda {
        subject.i_assign_a_value 
      }.should raise_error
      # TEST FAILS :(
    end 

    it "so if you're using Rails defaults, you need to clear the cache" do 
      # Yeah for a new line of code
      Rails.cache.clear
      subject.stub!(:i_can_be_stubbed_to_raise_an_error).and_raise("I'm an error")
      lambda {
        subject.i_assign_a_value 
      }.should raise_error
      # TEST PASSES :)
    end 

  end 
end 
