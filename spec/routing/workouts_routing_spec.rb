require "spec_helper"

describe Admin::WorkoutsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/workouts").should route_to(
        :controller => "admin/workouts",
        :action => "index")
    end

    it "routes to #new" do
      get("/admin/workouts/new").should route_to(
        :controller => "admin/workouts",
        :action => "new")
    end

    it "routes to #show" do
      get("/admin/workouts/1").should route_to(
        :controller => "admin/workouts",
        :action => "show", 
        :id => "1")
    end

    it "routes to #edit" do
      get("/admin/workouts/1/edit").should route_to(
        :controller => "admin/workouts",
        :action => "edit", 
        :id => "1")
    end

    it "routes to #create" do
      post("/admin/workouts").should route_to(
        :controller => "admin/workouts",
        :action => "create")
    end

    it "routes to #update" do
      put("/admin/workouts/1").should route_to(
        :controller => "admin/workouts",
        :action => "update", 
        :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/workouts/1").should route_to(
        :controller => "admin/workouts",
        :action => "destroy", 
        :id => "1")
    end

  end
end
