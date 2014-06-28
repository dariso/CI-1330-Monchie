require 'rails_helper'

RSpec.describe "usuario_clientes/new", :type => :view do
  before(:each) do
    assign(:usuario_cliente, UsuarioCliente.new())
  end

  it "renders new usuario_cliente form" do
    render

    assert_select "form[action=?][method=?]", usuario_clientes_path, "post" do
    end
  end
end
