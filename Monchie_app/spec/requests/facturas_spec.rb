require 'rails_helper'

RSpec.describe "Facturas", :type => :request do
  describe "GET /facturas" do
    it "works! (now write some real specs)" do
      get facturas_path
      expect(response.status).to be(200)
    end
  end
end
