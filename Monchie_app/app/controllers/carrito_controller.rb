class CarritoController < ApplicationController
  def index
    @restId = params[:restaurante_id]
  end
end
