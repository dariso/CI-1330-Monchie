class ProductosVendidosController < ApplicationController
  before_action :set_productos_vendido, only: [:show, :edit, :update, :destroy]

  # GET /productos_vendidos
  # GET /productos_vendidos.json
  def index
    @productos_vendidos = ProductosVendido.all
  end

  # GET /productos_vendidos/1
  # GET /productos_vendidos/1.json
  def show
    render :layout => 'iframe'
  end

  # GET /productos_vendidos/new
  def new
   @productos_vendido = ProductosVendido.new(params[:producto].permit(:producto_id))
   render :layout => 'iframe'
  end

   # GET /productos_vendidos/1/edit
  def edit
  end

  # POST /productos_vendidos
  # POST /productos_vendidos.json
  def create
    @productos_vendido = ProductosVendido.new(productos_vendido_params)
    @productos_vendido.orden_id = Orden.where(user_id:current_user.id).last.id###
    respond_to do |format|
      if @productos_vendido.save
        format.html { redirect_to @productos_vendido, notice: 'Producto agregado exitosamente al carrito.' }
        format.json { render :show, status: :created, location: @productos_vendido }
      else
        format.html { render :new }
        format.json { render json: @productos_vendido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productos_vendidos/1
  # PATCH/PUT /productos_vendidos/1.json
  def update
    respond_to do |format|
      if @productos_vendido.update(productos_vendido_params)
        format.html { redirect_to @productos_vendido, notice: 'Productos vendido was successfully updated.' }
        format.json { render :show, status: :ok, location: @productos_vendido }
      else
        format.html { render :edit }
        format.json { render json: @productos_vendido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos_vendidos/1
  # DELETE /productos_vendidos/1.json
  def destroy
    @productos_vendido.destroy
    respond_to do |format|
      format.html { redirect_to productos_vendidos_verCarrito_path }
      format.json { head :no_content }
    end
  end


  def verCarrito
     @productos_vendidos = Orden.where(user_id:current_user.id).last.productos_vendidos
     render :layout => 'iframe'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productos_vendido
      @productos_vendido = ProductosVendido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productos_vendido_params
      params.require(:productos_vendido).permit(:cantidad,:orden_id,:producto_id,:especificaciones)
    end
end
