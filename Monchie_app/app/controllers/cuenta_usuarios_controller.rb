class CuentaUsuariosController < ApplicationController
  before_action :set_cuenta_usuario, only: [:show, :edit, :update, :destroy]

  # GET /cuenta_usuarios
  # GET /cuenta_usuarios.json
  def index
    @cuenta_usuarios = CuentaUsuario.all
  end

  # GET /cuenta_usuarios/1
  # GET /cuenta_usuarios/1.json
  def show
  end

  # GET /cuenta_usuarios/new
  def new
    @cuenta_usuario = CuentaUsuario.new
  end

  # GET /cuenta_usuarios/1/edit
  def edit
  end

  # POST /cuenta_usuarios
  # POST /cuenta_usuarios.json
  def create
    @cuenta_usuario = CuentaUsuario.new(cuenta_usuario_params)

    respond_to do |format|
      if @cuenta_usuario.save
        format.html { redirect_to @cuenta_usuario, notice: 'Cuenta usuario was successfully created.' }
        format.json { render :show, status: :created, location: @cuenta_usuario }
      else
        format.html { render :new }
        format.json { render json: @cuenta_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuenta_usuarios/1
  # PATCH/PUT /cuenta_usuarios/1.json
  def update
    respond_to do |format|
      if @cuenta_usuario.update(cuenta_usuario_params)
        format.html { redirect_to @cuenta_usuario, notice: 'Cuenta usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuenta_usuario }
      else
        format.html { render :edit }
        format.json { render json: @cuenta_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta_usuarios/1
  # DELETE /cuenta_usuarios/1.json
  def destroy
    @cuenta_usuario.destroy
    respond_to do |format|
      format.html { redirect_to cuenta_usuarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuenta_usuario
      @cuenta_usuario = CuentaUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuenta_usuario_params
      params.require(:cuenta_usuario).permit(:usuario, :password)
    end
end
