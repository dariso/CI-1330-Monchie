require 'rails_helper'

RSpec.describe "facturas/show", :type => :view do
  before(:each) do
    @factura = assign(:factura, Factura.create!(
      :integer => "",
      :integer => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
