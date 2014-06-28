require 'rails_helper'

RSpec.describe "restaurantes/index", :type => :view do
  before(:each) do
    assign(:restaurantes, [
      Restaurante.create!(),
      Restaurante.create!()
    ])
  end

  it "renders a list of restaurantes" do
    render
  end
end
