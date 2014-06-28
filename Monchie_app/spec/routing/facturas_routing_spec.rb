require "rails_helper"

RSpec.describe FacturasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/facturas").to route_to("facturas#index")
    end

    it "routes to #new" do
      expect(:get => "/facturas/new").to route_to("facturas#new")
    end

    it "routes to #show" do
      expect(:get => "/facturas/1").to route_to("facturas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/facturas/1/edit").to route_to("facturas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/facturas").to route_to("facturas#create")
    end

    it "routes to #update" do
      expect(:put => "/facturas/1").to route_to("facturas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/facturas/1").to route_to("facturas#destroy", :id => "1")
    end

  end
end
