class RegistroAccionesController < ApplicationController
  before_action :set_registro_accione, only: [:show, :edit, :update, :destroy]

  # GET /registro_acciones
  # GET /registro_acciones.json
  def index
    @registro_acciones = RegistroAccione.all
  end

  # GET /registro_acciones/1
  # GET /registro_acciones/1.json
  def show
  end

  # GET /registro_acciones/new
  def new
    @registro_accione = RegistroAccione.new
  end

  # GET /registro_acciones/1/edit
  def edit
  end

  # POST /registro_acciones
  # POST /registro_acciones.json
  def create
    @registro_accione = RegistroAccione.new(registro_accione_params)

    respond_to do |format|
      if @registro_accione.save
        format.html { redirect_to @registro_accione, notice: 'Registro accione was successfully created.' }
        format.json { render :show, status: :created, location: @registro_accione }
      else
        format.html { render :new }
        format.json { render json: @registro_accione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_acciones/1
  # PATCH/PUT /registro_acciones/1.json
  def update
    respond_to do |format|
      if @registro_accione.update(registro_accione_params)
        format.html { redirect_to @registro_accione, notice: 'Registro accione was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_accione }
      else
        format.html { render :edit }
        format.json { render json: @registro_accione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_acciones/1
  # DELETE /registro_acciones/1.json
  def destroy
    @registro_accione.destroy
    respond_to do |format|
      format.html { redirect_to registro_acciones_url, notice: 'Registro accione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_accione
      @registro_accione = RegistroAccione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_accione_params
      params.require(:registro_accione).permit(:user_id, :accion, :detalle, :fecha)
    end
end
