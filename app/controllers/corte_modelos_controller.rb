class CorteModelosController < ApplicationController
  before_action :set_corte_modelo, only: [:show, :edit, :update, :destroy]

  # GET /corte_modelos
  # GET /corte_modelos.json
  def index
    @corte_modelos = CorteModelo.all
  end

  # GET /corte_modelos/1
  # GET /corte_modelos/1.json
  def show
  end

  # GET /corte_modelos/new
  def new
    @corte_modelo = CorteModelo.new
  end

  # GET /corte_modelos/1/edit
  def edit
    @modelos = @corte_modelo.modelos.build
  end

  # POST /corte_modelos
  # POST /corte_modelos.json
  def create
    @corte_modelo = CorteModelo.new(corte_modelo_params)

    respond_to do |format|
      if @corte_modelo.save
        format.html { redirect_to @corte_modelo, notice: 'Corte modelo was successfully created.' }
        format.json { render :show, status: :created, location: @corte_modelo }
      else
        format.html { render :new }
        format.json { render json: @corte_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corte_modelos/1
  # PATCH/PUT /corte_modelos/1.json
  def update
    respond_to do |format|
      if @corte_modelo.update(corte_modelo_params)
        format.html { redirect_to @corte_modelo, notice: 'Corte modelo was successfully updated.' }
        format.json { render :show, status: :ok, location: @corte_modelo }
      else
        format.html { render :edit }
        format.json { render json: @corte_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corte_modelos/1
  # DELETE /corte_modelos/1.json
  def destroy
    @corte_modelo.destroy
    respond_to do |format|
      format.html { redirect_to corte_modelos_url, notice: 'Corte modelo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corte_modelo
      @corte_modelo = CorteModelo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corte_modelo_params
      params.require(:corte_modelo).permit(:qtd, :modelo_id, :corte_id, :valor_custo)
    end
end
