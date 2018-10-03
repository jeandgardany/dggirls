class PagParcelasController < ApplicationController
  before_action :set_pag_parcela, only: [:show, :edit, :update, :destroy]

  # GET /pag_parcelas
  # GET /pag_parcelas.json
  def index
    @pag_parcelas = PagParcela.all
  end

  # GET /pag_parcelas/1
  # GET /pag_parcelas/1.json
  def show
  end

  # GET /pag_parcelas/new
  def new
    @pag_parcela = PagParcela.new
  end

  # GET /pag_parcelas/1/edit
  def edit
  end

  # POST /pag_parcelas
  # POST /pag_parcelas.json
  def create
    @pag_parcela = PagParcela.new(pag_parcela_params)

    respond_to do |format|
      if @pag_parcela.save
        format.html { redirect_to @pag_parcela, notice: 'Pag parcela was successfully created.' }
        format.json { render :show, status: :created, location: @pag_parcela }
      else
        format.html { render :new }
        format.json { render json: @pag_parcela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pag_parcelas/1
  # PATCH/PUT /pag_parcelas/1.json
  def update
    respond_to do |format|
      if @pag_parcela.update(pag_parcela_params)
        format.html { redirect_to @pag_parcela, notice: 'Pag parcela was successfully updated.' }
        format.json { render :show, status: :ok, location: @pag_parcela }
      else
        format.html { render :edit }
        format.json { render json: @pag_parcela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pag_parcelas/1
  # DELETE /pag_parcelas/1.json
  def destroy
    @pag_parcela.destroy
    respond_to do |format|
      format.html { redirect_to pag_parcelas_url, notice: 'Pag parcela was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pag_parcela
      @pag_parcela = PagParcela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pag_parcela_params
      params.require(:pag_parcela).permit(:data, :valorp, :pago)
    end
end
