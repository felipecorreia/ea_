class PainelsController < ApplicationController
  before_action :set_painel, only: [:show, :edit, :update, :destroy]

  # GET /painels
  # GET /painels.json
  def index
    @painels = Painel.all
  end

  # GET /painels/1
  # GET /painels/1.json
  def show
  end

  # GET /painels/new
  def new
    @painel = Painel.new
  end

  # GET /painels/1/edit
  def edit
  end

  # POST /painels
  # POST /painels.json
  def create
    @painel = Painel.new(painel_params)

    respond_to do |format|
      if @painel.save
        format.html { redirect_to @painel, notice: 'Painel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @painel }
      else
        format.html { render action: 'new' }
        format.json { render json: @painel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /painels/1
  # PATCH/PUT /painels/1.json
  def update
    respond_to do |format|
      if @painel.update(painel_params)
        format.html { redirect_to @painel, notice: 'Painel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @painel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /painels/1
  # DELETE /painels/1.json
  def destroy
    @painel.destroy
    respond_to do |format|
      format.html { redirect_to painels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painel
      @painel = Painel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def painel_params
      params.require(:painel).permit(:nome_app, :tipo_evento)
    end
end
