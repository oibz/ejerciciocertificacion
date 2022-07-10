class OfertaLaboralsController < ApplicationController
  before_action :set_oferta_laboral, only: %i[ show edit update destroy ]

  # GET /oferta_laborals or /oferta_laborals.json
  def index
    @oferta_laborals = OfertaLaboral.all
  end

  # GET /oferta_laborals/1 or /oferta_laborals/1.json
  def show
  end

  # GET /oferta_laborals/new
  def new
    @oferta_laboral = OfertaLaboral.new
  end

  # GET /oferta_laborals/1/edit
  def edit
  end

  # POST /oferta_laborals or /oferta_laborals.json
  def create
    @oferta_laboral = OfertaLaboral.new(oferta_laboral_params)

    respond_to do |format|
      if @oferta_laboral.save
        format.html { redirect_to oferta_laboral_url(@oferta_laboral), notice: "Oferta laboral was successfully created." }
        format.json { render :show, status: :created, location: @oferta_laboral }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @oferta_laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oferta_laborals/1 or /oferta_laborals/1.json
  def update
    respond_to do |format|
      if @oferta_laboral.update(oferta_laboral_params)
        format.html { redirect_to oferta_laboral_url(@oferta_laboral), notice: "Oferta laboral was successfully updated." }
        format.json { render :show, status: :ok, location: @oferta_laboral }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @oferta_laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oferta_laborals/1 or /oferta_laborals/1.json
  def destroy
    @oferta_laboral.destroy

    respond_to do |format|
      format.html { redirect_to oferta_laborals_url, notice: "Oferta laboral was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oferta_laboral
      @oferta_laboral = OfertaLaboral.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oferta_laboral_params
      params.require(:oferta_laboral).permit(:cargo, :descripcion, :vacantes, :rango_minimo, :rango_maximo, :fecha_inicio, :regiones_id, :tipo_oferta_id, :empresas_id,)
    end
end
