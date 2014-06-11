require 'rails_helper'

RSpec.describe "usuario_clientes/show", :type => :view do
  before(:each) do
    @usuario_cliente = assign(:usuario_cliente, UsuarioCliente.create!(
      :nombre => "Nombre",
      :apellidos => "Apellidos",
      :provincia => "Provincia",
      :canton => "Canton",
      :distrito => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Apellidos/)
    expect(rendered).to match(/Provincia/)
    expect(rendered).to match(/Canton/)
    expect(rendered).to match(//)
  end
end
