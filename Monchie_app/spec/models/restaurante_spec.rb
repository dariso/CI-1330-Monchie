require 'rails_helper'

RSpec.describe Restaurante, :type => :model do
  it 'es invalido sin nombre' do
  restaurante=Restaurante.new
  restaurante.should_not be_valid
  end
  it 'es invalido sin provincia' do
  restaurante1=Restaurante.new
  restaurante1.should_not be_valid
  end
  it 'es invalido sin canton' do
  restaurante2=Restaurante.new
  restaurante2.should_not be_valid
  end
  it 'es invalido sin distrito' do
  restaurante3=Restaurante.new
  restaurante3.should_not be_valid
  end
  it 'es invalido sin direccion' do
  restaurante4=Restaurante.new
  restaurante4.should_not be_valid
  end
end
