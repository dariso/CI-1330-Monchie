require 'rails_helper'

RSpec.describe "facturas/index", :type => :view do
  before(:each) do
    assign(:facturas, [
      Factura.create!(
        :total => 1
      ),
      Factura.create!(
        :total => 1
      )
    ])
  end

  it "renders a list of facturas" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
