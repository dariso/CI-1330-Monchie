require 'rails_helper'

RSpec.describe "facturas/edit", :type => :view do
  before(:each) do
    @factura = assign(:factura, Factura.create!(
      :integer => "",
      :integer => ""
    ))
  end

  it "renders the edit factura form" do
    render

    assert_select "form[action=?][method=?]", factura_path(@factura), "post" do

      assert_select "input#factura_integer[name=?]", "factura[integer]"

      assert_select "input#factura_integer[name=?]", "factura[integer]"
    end
  end
end
