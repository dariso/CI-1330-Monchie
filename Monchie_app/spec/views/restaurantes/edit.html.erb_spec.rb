require 'rails_helper'

RSpec.describe "restaurantes/edit", :type => :view do
  before(:each) do
    @restaurante = assign(:restaurante, Restaurante.create!())
  end

  it "renders the edit restaurante form" do
    render

    assert_select "form[action=?][method=?]", restaurante_path(@restaurante), "post" do
    end
  end
end
