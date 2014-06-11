require 'rails_helper'

RSpec.describe "UsuarioClientes", :type => :request do
  describe "GET /usuario_clientes" do
    it "works! (now write some real specs)" do
      get usuario_clientes_path
      expect(response.status).to be(200)
    end
  end
end
