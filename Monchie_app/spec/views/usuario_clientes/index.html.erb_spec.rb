require 'rails_helper'

RSpec.describe "usuario_clientes/index", :type => :view do
  before(:each) do
    assign(:usuario_clientes, [
      UsuarioCliente.create!(),
      UsuarioCliente.create!()
    ])
  end

  it "renders a list of usuario_clientes" do
    render
  end
end
