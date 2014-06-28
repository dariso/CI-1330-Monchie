require 'rails_helper'

RSpec.describe "facturas/new", :type => :view do
  before(:each) do
    assign(:factura, Factura.new(
      :integer => "",
      :integer => ""
    ))
  end

  it "renders new factura form" do
    render

    assert_select "form[action=?][method=?]", facturas_path, "post" do

      assert_select "input#factura_integer[name=?]", "factura[integer]"

      assert_select "input#factura_integer[name=?]", "factura[integer]"
    end
  end
end
