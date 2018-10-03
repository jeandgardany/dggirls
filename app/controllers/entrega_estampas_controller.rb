class EntregaEstampasController < ApplicationController
  before_action :set_entrega_estampa, only: [:show, :edit, :update, :destroy]

  # GET /entrega_estampas
  # GET /entrega_estampas.json
  def index
    @entrega_estampas = EntregaEstampa.all
  end

  # GET /entrega_estampas/1
  # GET /entrega_estampas/1.json
  def show
  end

  # GET /entrega_estampas/new
  def new
    @entrega_estampa = EntregaEstampa.new
  end

  # GET /entrega_estampas/1/edit
  def edit
  end

  # POST /entrega_estampas
  # POST /entrega_estampas.json
  def create
    @entrega_estampa = EntregaEstampa.new(entrega_estampa_params)

    respond_to do |format|
      if @entrega_estampa.save
        format.html { redirect_to @entrega_estampa, notice: 'Entrega estampa was successfully created.' }
        format.json { render :show, status: :created, location: @entrega_estampa }
      else
        format.html { render :new }
        format.json { render json: @entrega_estampa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entrega_estampas/1
  # PATCH/PUT /entrega_estampas/1.json
  def update
    respond_to do |format|
      if @entrega_estampa.update(entrega_estampa_params)
        format.html { redirect_to @entrega_estampa, notice: 'Entrega estampa was successfully updated.' }
        format.json { render :show, status: :ok, location: @entrega_estampa }
      else
        format.html { render :edit }
        format.json { render json: @entrega_estampa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrega_estampas/1
  # DELETE /entrega_estampas/1.json
  def destroy
    @entrega_estampa.destroy
    respond_to do |format|
      format.html { redirect_to entrega_estampas_url, notice: 'Entrega estampa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrega_estampa
      @entrega_estampa = EntregaEstampa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entrega_estampa_params
      params.require(:entrega_estampa).permit(:data, :estampa_id, :valor, :costura_id, :obs, :perdas, :qtd_entregue)
    end
end
