require 'rails_helper'

RSpec.describe "usuario_clientes/index", :type => :view do
  before(:each) do
    assign(:usuario_clientes, [
      UsuarioCliente.create!(
        :nombre => "Nombre",
        :apellidos => "Apellidos",
        :provincia => "Provincia",
        :canton => "Canton",
        :distrito => ""
      ),
      UsuarioCliente.create!(
        :nombre => "Nombre",
        :apellidos => "Apellidos",
        :provincia => "Provincia",
        :canton => "Canton",
        :distrito => ""
      )
    ])
  end

  it "renders a list of usuario_clientes" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Apellidos".to_s, :count => 2
    assert_select "tr>td", :text => "Provincia".to_s, :count => 2
    assert_select "tr>td", :text => "Canton".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
