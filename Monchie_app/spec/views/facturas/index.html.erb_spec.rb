require 'rails_helper'

RSpec.describe "facturas/index", :type => :view do
  before(:each) do
    assign(:facturas, [
      Factura.create!(
        :integer => "",
        :integer => ""
      ),
      Factura.create!(
        :integer => "",
        :integer => ""
      )
    ])
  end

  it "renders a list of facturas" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
