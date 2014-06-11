require 'rails_helper'

RSpec.describe "restaurantes/index", :type => :view do
  before(:each) do
    assign(:restaurantes, [
      Restaurante.create!(
        :nombre => "Nombre",
        :provincia => "Provincia",
        :canton => "Canton",
        :distrito => "Distrito",
        :direccion => "Direccion"
      ),
      Restaurante.create!(
        :nombre => "Nombre",
        :provincia => "Provincia",
        :canton => "Canton",
        :distrito => "Distrito",
        :direccion => "Direccion"
      )
    ])
  end

  it "renders a list of restaurantes" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Provincia".to_s, :count => 2
    assert_select "tr>td", :text => "Canton".to_s, :count => 2
    assert_select "tr>td", :text => "Distrito".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
  end
end
