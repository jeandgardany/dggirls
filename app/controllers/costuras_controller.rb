class CosturasController < ApplicationController
  before_action :set_costura, only: [:show, :edit, :update, :destroy]

  # GET /costuras
  # GET /costuras.json
  def index
    @costuras = Costura.all
  end

  # GET /costuras/1
  # GET /costuras/1.json
  def show
  end

  # GET /costuras/new
  def new
    @costura = Costura.new
  end

  # GET /costuras/1/edit
  def edit
  end

  # POST /costuras
  # POST /costuras.json
  def create
    @costura = Costura.new(costura_params)

    respond_to do |format|
      if @costura.save
        format.html { redirect_to @costura, notice: 'Costura was successfully created.' }
        format.json { render :show, status: :created, location: @costura }
      else
        format.html { render :new }
        format.json { render json: @costura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costuras/1
  # PATCH/PUT /costuras/1.json
  def update
    respond_to do |format|
      if @costura.update(costura_params)
        format.html { redirect_to @costura, notice: 'Costura was successfully updated.' }
        format.json { render :show, status: :ok, location: @costura }
      else
        format.html { render :edit }
        format.json { render json: @costura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costuras/1
  # DELETE /costuras/1.json
  def destroy
    @costura.destroy
    respond_to do |format|
      format.html { redirect_to costuras_url, notice: 'Costura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costura
      @costura = Costura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costura_params
      params.require(:costura).permit(:data, :faccao, :corte_id, :qtd_total)
    end
end
