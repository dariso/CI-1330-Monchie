require 'rails_helper'

RSpec.describe "usuario_clientes/edit", :type => :view do
  before(:each) do
    @usuario_cliente = assign(:usuario_cliente, UsuarioCliente.create!())
  end

  it "renders the edit usuario_cliente form" do
    render

    assert_select "form[action=?][method=?]", usuario_cliente_path(@usuario_cliente), "post" do
    end
  end
end
