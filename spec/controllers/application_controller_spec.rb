
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
end 
