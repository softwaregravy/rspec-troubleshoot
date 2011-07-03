require "spec_helper"

describe CandiesController do
  describe "routing" do

    it "routes to #index" do
      get("/candies").should route_to("candies#index")
    end

    it "routes to #new" do
      get("/candies/new").should route_to("candies#new")
    end

    it "routes to #show" do
      get("/candies/1").should route_to("candies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/candies/1/edit").should route_to("candies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/candies").should route_to("candies#create")
    end

    it "routes to #update" do
      put("/candies/1").should route_to("candies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/candies/1").should route_to("candies#destroy", :id => "1")
    end

  end
end
