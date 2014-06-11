require "rails_helper"

RSpec.describe UsuarioClientesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/usuario_clientes").to route_to("usuario_clientes#index")
    end

    it "routes to #new" do
      expect(:get => "/usuario_clientes/new").to route_to("usuario_clientes#new")
    end

    it "routes to #show" do
      expect(:get => "/usuario_clientes/1").to route_to("usuario_clientes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/usuario_clientes/1/edit").to route_to("usuario_clientes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/usuario_clientes").to route_to("usuario_clientes#create")
    end

    it "routes to #update" do
      expect(:put => "/usuario_clientes/1").to route_to("usuario_clientes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/usuario_clientes/1").to route_to("usuario_clientes#destroy", :id => "1")
    end

  end
end
