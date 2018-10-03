class EstampasController < ApplicationController
  before_action :set_estampa, only: [:show, :edit, :update, :destroy]

  # GET /estampas
  # GET /estampas.json
  def index
    @estampas = Estampa.all
  end

  # GET /estampas/1
  # GET /estampas/1.json
  def show
  end

  # GET /estampas/new
  def new
    @estampa = Estampa.new
  end

  # GET /estampas/1/edit
  def edit
  end

  # POST /estampas
  # POST /estampas.json
  def create
    @estampa = Estampa.new(estampa_params)

    respond_to do |format|
      if @estampa.save
        format.html { redirect_to @estampa, notice: 'Estampa was successfully created.' }
        format.json { render :show, status: :created, location: @estampa }
      else
        format.html { render :new }
        format.json { render json: @estampa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estampas/1
  # PATCH/PUT /estampas/1.json
  def update
    respond_to do |format|
      if @estampa.update(estampa_params)
        format.html { redirect_to @estampa, notice: 'Estampa was successfully updated.' }
        format.json { render :show, status: :ok, location: @estampa }
      else
        format.html { render :edit }
        format.json { render json: @estampa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estampas/1
  # DELETE /estampas/1.json
  def destroy
    @estampa.destroy
    respond_to do |format|
      format.html { redirect_to estampas_url, notice: 'Estampa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estampa
      @estampa = Estampa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estampa_params
      params.require(:estampa).permit(:data, :corte_id, :qtd_total, :valor_total, :estampa_tipo, :finalizado)
    end
end
