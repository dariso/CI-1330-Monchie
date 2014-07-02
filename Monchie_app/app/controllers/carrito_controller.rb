class CarritoController < ApplicationController
  def index
    @restauranteUserId = params[:restauranteUser_id]
  end
end
