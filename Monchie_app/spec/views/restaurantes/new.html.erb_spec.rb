require 'rails_helper'

RSpec.describe "restaurantes/new", :type => :view do
  before(:each) do
    assign(:restaurante, Restaurante.new())
  end

  it "renders new restaurante form" do
    render

    assert_select "form[action=?][method=?]", restaurantes_path, "post" do
    end
  end
end
