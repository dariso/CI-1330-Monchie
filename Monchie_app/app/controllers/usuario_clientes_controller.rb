class UsuarioClientesController < ApplicationController
  before_action :set_usuario_cliente, only: [:show, :edit, :update, :destroy]

  # GET /usuario_clientes
  # GET /usuario_clientes.json
  def index
    @usuario_clientes = UsuarioCliente.all
  end

  # GET /usuario_clientes/1
  # GET /usuario_clientes/1.json
  def show
  end

  # GET /usuario_clientes/new
  def new
    @usuario_cliente = UsuarioCliente.new
	@usuario_cliente.with_blank_telefonos
  end

  # GET /usuario_clientes/1/edit
  def edit
  end

  # POST /usuario_clientes
  # POST /usuario_clientes.json
  def create
    @usuario_cliente = UsuarioCliente.new(usuario_cliente_params)

    respond_to do |format|
      if @usuario_cliente.save
        format.html { redirect_to @usuario_cliente, notice: 'Usuario cliente was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_cliente }
      else
        format.html { render :new }
        format.json { render json: @usuario_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_clientes/1
  # PATCH/PUT /usuario_clientes/1.json
  def update
    @usuario_cliente = UsuarioCliente.find(params[:id])
    respond_to do |format|
      if @usuario_cliente.update(usuario_cliente_params)
        format.html { redirect_to @usuario_cliente, notice: 'Usuario cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_cliente }
      else
        format.html { render :edit }
        format.json { render json: @usuario_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_clientes/1
  # DELETE /usuario_clientes/1.json
  def destroy
    @usuario_cliente.destroy
    respond_to do |format|
      format.html { redirect_to usuario_clientes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_cliente
      @usuario_cliente = UsuarioCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_cliente_params
      params.require(:usuario_cliente).permit(:nombre,:apellidos,:direccion,telefonos_attributes:[:telefono,:id])
    end
end
