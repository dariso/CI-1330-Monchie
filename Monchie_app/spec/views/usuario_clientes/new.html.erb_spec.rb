require 'rails_helper'

RSpec.describe "usuario_clientes/new", :type => :view do
  before(:each) do
    assign(:usuario_cliente, UsuarioCliente.new(
      :nombre => "MyString",
      :apellidos => "MyString",
      :provincia => "MyString",
      :canton => "MyString",
      :distrito => ""
    ))
  end

  it "renders new usuario_cliente form" do
    render

    assert_select "form[action=?][method=?]", usuario_clientes_path, "post" do

      assert_select "input#usuario_cliente_nombre[name=?]", "usuario_cliente[nombre]"

      assert_select "input#usuario_cliente_apellidos[name=?]", "usuario_cliente[apellidos]"

      assert_select "input#usuario_cliente_provincia[name=?]", "usuario_cliente[provincia]"

      assert_select "input#usuario_cliente_canton[name=?]", "usuario_cliente[canton]"

      assert_select "input#usuario_cliente_distrito[name=?]", "usuario_cliente[distrito]"
    end
  end
end
