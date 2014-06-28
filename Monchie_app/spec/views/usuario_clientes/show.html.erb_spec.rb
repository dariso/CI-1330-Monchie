require 'rails_helper'

RSpec.describe "usuario_clientes/show", :type => :view do
  before(:each) do
    @usuario_cliente = assign(:usuario_cliente, UsuarioCliente.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
