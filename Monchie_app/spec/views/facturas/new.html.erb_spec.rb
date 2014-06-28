require 'rails_helper'

RSpec.describe "facturas/new", :type => :view do
  before(:each) do
    assign(:factura, Factura.new(
      :total => 1
    ))
  end

  it "renders new factura form" do
    render

    assert_select "form[action=?][method=?]", facturas_path, "post" do

      assert_select "input#factura_total[name=?]", "factura[total]"
    end
  end
end
