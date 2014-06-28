require 'rails_helper'

RSpec.describe "facturas/show", :type => :view do
  before(:each) do
    @factura = assign(:factura, Factura.create!(
      :total => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
