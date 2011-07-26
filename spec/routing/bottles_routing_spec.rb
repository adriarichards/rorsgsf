require "spec_helper"

describe BottlesController do
  describe "routing" do

    it "routes to #index" do
      get("/bottles").should route_to("bottles#index")
    end

    it "routes to #new" do
      get("/bottles/new").should route_to("bottles#new")
    end

    it "routes to #show" do
      get("/bottles/1").should route_to("bottles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bottles/1/edit").should route_to("bottles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bottles").should route_to("bottles#create")
    end

    it "routes to #update" do
      put("/bottles/1").should route_to("bottles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bottles/1").should route_to("bottles#destroy", :id => "1")
    end

  end
end
