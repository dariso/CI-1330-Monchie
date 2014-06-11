require 'rails_helper'

RSpec.describe "restaurantes/edit", :type => :view do
  before(:each) do
    @restaurante = assign(:restaurante, Restaurante.create!(
      :nombre => "MyString",
      :provincia => "MyString",
      :canton => "MyString",
      :distrito => "MyString",
      :direccion => "MyString"
    ))
  end

  it "renders the edit restaurante form" do
    render

    assert_select "form[action=?][method=?]", restaurante_path(@restaurante), "post" do

      assert_select "input#restaurante_nombre[name=?]", "restaurante[nombre]"

      assert_select "input#restaurante_provincia[name=?]", "restaurante[provincia]"

      assert_select "input#restaurante_canton[name=?]", "restaurante[canton]"

      assert_select "input#restaurante_distrito[name=?]", "restaurante[distrito]"

      assert_select "input#restaurante_direccion[name=?]", "restaurante[direccion]"
    end
  end
end
