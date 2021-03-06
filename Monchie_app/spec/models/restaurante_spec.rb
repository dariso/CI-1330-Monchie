require 'rails_helper'

RSpec.describe Restaurante, :type => :model do
    it 'is invalid without nombre' do
  restaurante=Restaurante.new
  restaurante.should_not be_valid
  end
  it 'is invalid without provincia' do
  restaurante1=Restaurante.new
  restaurante1.should_not be_valid
  end
  it 'is invalid without canton' do
  restaurante2=Restaurante.new
  restaurante2.should_not be_valid
  end
  it 'is invalid without distrito' do
  restaurante3=Restaurante.new
  restaurante3.should_not be_valid
  end
  it 'is invalid without direccion' do
  restaurante4=Restaurante.new
  restaurante4.should_not be_valid
  end
end
