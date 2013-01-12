require "spec_helper"

describe Admin::UsersController do
  describe "Admin Users Routing:" do

    it "routes to admin#index" do
      get("/admin/users").should route_to(
        :controller => "admin/users",
        :action => "index")
    end

    it "routes to admin#new" do
      get("/admin/users/new").should route_to(
        :controller => "admin/users",
        :action => "new")
    end

    it "routes to admin#edit" do
      get("/admin/users/1/edit").should route_to(
        :controller => "admin/users",
        :action => "edit", 
        :id => "1")
    end

    it "routes to admin#create" do
      post("/admin/users").should route_to(
        :controller => "admin/users",
        :action => "create")
    end

    it "routes to admin#update" do
      put("/admin/users/1").should route_to(
        :controller => "admin/users",
        :action => "update", 
        :id => "1")
    end

    it "routes to admin#destroy" do
      delete("/admin/users/1").should route_to(
        :controller => "admin/users",
        :action => "destroy", 
        :id => "1")
    end

  end

end

describe UsersController do
  describe "Users Routing:" do

    it "/users should not be routable" do
      expect(:get => '/users').not_to be_routable
    end

    it "routes to #show" do
      get("/users/1").should route_to(
        :controller => "users",
        :action => "show", 
        :id => "1")
    end
  end
end

