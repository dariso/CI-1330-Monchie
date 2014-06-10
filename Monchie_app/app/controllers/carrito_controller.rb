class CarritoController < ApplicationController
  def index

    @usuario = UsuarioCliente.first
    @usuario.ordens.create!
  end
end
