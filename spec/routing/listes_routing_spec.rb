require "spec_helper"

describe ListesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/listes" }.should route_to(:controller => "listes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/listes/new" }.should route_to(:controller => "listes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/listes/1" }.should route_to(:controller => "listes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/listes/1/edit" }.should route_to(:controller => "listes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/listes" }.should route_to(:controller => "listes", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/listes/1" }.should route_to(:controller => "listes", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/listes/1" }.should route_to(:controller => "listes", :action => "destroy", :id => "1")
    end

  end
end
