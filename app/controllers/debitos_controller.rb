class DebitosController < ApplicationController
  before_action :set_debito, only: [:show, :edit, :update, :destroy]

  # GET /debitos
  # GET /debitos.json
  def index
    @debitos = Debito.all
  end

  # GET /debitos/1
  # GET /debitos/1.json
  def show
  end

  # GET /debitos/new
  def new
    @debito = Debito.new
  end

  # GET /debitos/1/edit
  def edit
  end

  # POST /debitos
  # POST /debitos.json
  def create
    @debito = Debito.new(debito_params)

    respond_to do |format|
      if @debito.save
        format.html { redirect_to @debito, notice: 'Debito was successfully created.' }
        format.json { render :show, status: :created, location: @debito }
      else
        format.html { render :new }
        format.json { render json: @debito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debitos/1
  # PATCH/PUT /debitos/1.json
  def update
    respond_to do |format|
      if @debito.update(debito_params)
        format.html { redirect_to @debito, notice: 'Debito was successfully updated.' }
        format.json { render :show, status: :ok, location: @debito }
      else
        format.html { render :edit }
        format.json { render json: @debito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debitos/1
  # DELETE /debitos/1.json
  def destroy
    @debito.destroy
    respond_to do |format|
      format.html { redirect_to debitos_url, notice: 'Debito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debito
      @debito = Debito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def debito_params
      params.require(:debito).permit(:compra_id, :qtd_parcelas)
    end
end
