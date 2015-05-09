require "rails_helper"

RSpec.describe RawsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/raws").to route_to("raws#index")
    end

    it "routes to #new" do
      expect(:get => "/raws/new").to route_to("raws#new")
    end

    it "routes to #show" do
      expect(:get => "/raws/1").to route_to("raws#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/raws/1/edit").to route_to("raws#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/raws").to route_to("raws#create")
    end

    it "routes to #update" do
      expect(:put => "/raws/1").to route_to("raws#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/raws/1").to route_to("raws#destroy", :id => "1")
    end

  end
end
