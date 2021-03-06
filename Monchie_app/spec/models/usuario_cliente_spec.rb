require 'rails_helper'

RSpec.describe UsuarioCliente, :type => :model do
  it 'is invalid without nombre' do
  usuario=UsuarioCliente.new
  usuario.should_not be_valid
  end
  it 'is invalid without apellidos' do
  usuario1=UsuarioCliente.new
  usuario1.should_not be_valid
  end
  it 'is invalid without provincia' do
  usuario2=UsuarioCliente.new
  usuario2.should_not be_valid
  end
  it 'is invalid without canton' do
  usuario3=UsuarioCliente.new
  usuario3.should_not be_valid
  end
  it 'is invalid without distrito' do
  usuario4=UsuarioCliente.new
  usuario4.should_not be_valid
  end
  it 'is invalid without dirección' do
  usuario5=UsuarioCliente.new
  usuario5.should_not be_valid
  end
end
