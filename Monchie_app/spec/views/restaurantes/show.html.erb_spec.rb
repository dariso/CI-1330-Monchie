require 'rails_helper'

RSpec.describe "restaurantes/show", :type => :view do
  before(:each) do
    @restaurante = assign(:restaurante, Restaurante.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
