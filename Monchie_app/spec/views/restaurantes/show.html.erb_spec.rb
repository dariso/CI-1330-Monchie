require 'rails_helper'

RSpec.describe "restaurantes/show", :type => :view do
  before(:each) do
    @restaurante = assign(:restaurante, Restaurante.create!(
      :nombre => "Nombre",
      :provincia => "Provincia",
      :canton => "Canton",
      :distrito => "Distrito",
      :direccion => "Direccion"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Provincia/)
    expect(rendered).to match(/Canton/)
    expect(rendered).to match(/Distrito/)
    expect(rendered).to match(/Direccion/)
  end
end
