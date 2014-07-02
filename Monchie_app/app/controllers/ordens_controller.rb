class OrdensController < ApplicationController
  before_action :set_orden, only: [:show, :edit, :update, :destroy]

  # GET /ordens
  # GET /ordens.json
  def index
    @ordens = Orden.all
  end

  # GET /ordens/1
  # GET /ordens/1.json
  def show
  end

  # GET /ordens/new
  def new
    @orden = Orden.new
  end

  # GET /ordens/1/edit
  def edit
  end
  

  # POST /ordens
  # POST /ordens.json
  def create
    @orden = Orden.new(orden_params)

    respond_to do |format|
      if @orden.save
        format.html { redirect_to @orden, notice: 'Orden was successfully created.' }
        format.json { render :show, status: :created, location: @orden }
      else
        format.html { render :new }
        format.json { render json: @orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordens/1
  # PATCH/PUT /ordens/1.json
  def update
    respond_to do |format|
      if @orden.update(orden_params)
        format.html { redirect_to productos_selProductos_path(restauranteUser_Id:Restaurante.find(@orden.restaurante_id).user_id)}
        format.json { render :show, status: :ok, location: @orden }
      else
        format.html { render :edit }
        format.json { render json: @orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordens/1
  # DELETE /ordens/1.json
  def destroy
    @orden.destroy
    respond_to do |format|
      format.html { redirect_to ordens_url }
      format.json { head :no_content }
    end
  end

  def crearOCargarOrden
    restauranteUserId = params[:restauranteUser_id]
    restauranteId = Restaurante.find_by_user_id(restauranteUserId).id
    if Orden.where(user_id:current_user.id,restaurante_id:restauranteId).last.present?
      if Orden.where(user_id:current_user.id,restaurante_id:restauranteId).last.estado != "Activa"
        Orden.create!(user_id:current_user.id,modoretiro:"Express",estado:"Activa",restaurante_id:restauranteId)###Sistema de estados no esta con el modelo estado
      end
    else
      Orden.create!(user_id:current_user.id,modoretiro:"Express",estado:"Activa",restaurante_id:restauranteId)
    end

    redirect_to  carrito_index_path(restauranteUser_id: restauranteUserId)
  end

  def cambioModoRetiro
    @orden = Orden.where(user_id:current_user.id).last
    render :layout => 'iframe'
  end

  def finalizarOrden
    restaurante = Restaurante.find_by_user_id(params[:restauranteUser_Id])
    @orden = Orden.where(user_id:current_user.id,restaurante_id:restaurante.id).last
    if Factura.where(orden_id: @orden.id).present?
       @factura = Factura.find_by_orden_id(@orden.id)
       redirect_to @factura
    else
       @factura = Factura.create!(orden_id:@orden.id)
       redirect_to @factura
    end
  end

  def cambiaEstadoFinOrden
    @orden = Orden.where(user_id:current_user.id,restaurante_id:params[:restaurante_id]).last
    @orden.update(estado:"Finalizada")
    @orden.save!
    redirect_to static_pages_home_path
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden
      @orden = Orden.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orden_params
      params.require(:orden).permit(:modoretiro,:estado)
    end
end
