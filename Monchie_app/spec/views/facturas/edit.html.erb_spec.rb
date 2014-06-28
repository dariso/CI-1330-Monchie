require 'rails_helper'

RSpec.describe "facturas/edit", :type => :view do
  before(:each) do
    @factura = assign(:factura, Factura.create!(
      :total => 1
    ))
  end

  it "renders the edit factura form" do
    render

    assert_select "form[action=?][method=?]", factura_path(@factura), "post" do

      assert_select "input#factura_total[name=?]", "factura[total]"
    end
  end
end
