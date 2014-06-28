class RestaurantesController < ApplicationController
  before_action :set_restaurante, only: [:show, :edit, :update, :destroy]

  # GET /restaurantes
  # GET /restaurantes.json
  def index
    @restaurantes = Restaurante.all
  end

  # GET /restaurantes/1
  # GET /restaurantes/1.json
  def show
  end

  # GET /restaurantes/new
  def new
    @restaurante = Restaurante.new
    @restaurante.with_blank_infoContacto
  end

  # GET /restaurantes/1/edit
  def edit
  end

  def selRestaurante
    if Orden.where(user_id:current_user.id).last.present?
      if Orden.where(user_id:current_user.id).last.estado != "Activa"
      Orden.create!(user_id:current_user.id,modoretiro:"Express",estado:"Activa")###Sistema de estados no esta con el modelo estado
      end
    else
      Orden.create!(user_id:current_user.id,modoretiro:"Express",estado:"Activa")
    end
    @restaurantes = Restaurante.all
  end

  # POST /restaurantes
  # POST /restaurantes.json
  def create
    @restaurante = Restaurante.new(restaurante_params)

    respond_to do |format|
      if @restaurante.save
        format.html { redirect_to @restaurante, notice: 'Restaurante was successfully created.' }
        format.json { render :show, status: :created, location: @restaurante }
      else
        format.html { render :new }
        format.json { render json: @restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurantes/1
  # PATCH/PUT /restaurantes/1.json
  def update
    respond_to do |format|
      if @restaurante.update(restaurante_params)
        format.html { redirect_to @restaurante, notice: 'Restaurante was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurante }
      else
        format.html { render :edit }
        format.json { render json: @restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurantes/1
  # DELETE /restaurantes/1.json
  def destroy
    @restaurante.destroy
    respond_to do |format|
      format.html { redirect_to restaurantes_url }
      format.json { head :no_content }
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurante
      @restaurante = Restaurante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurante_params
      params.require(:restaurante).permit(:nombre,:provincia, :canton, :distrito, :direccion,telefonos_attributes:[:telefono,:id],emails_attributes:[:email,:id])
    end
end
