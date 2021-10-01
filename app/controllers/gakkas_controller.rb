class GakkasController < ApplicationController
  before_action :set_gakka, only: %i[ show edit update destroy ]

  # GET /gakkas or /gakkas.json
  def index
    @gakkas = Gakka.all
  end

  # GET /gakkas/1 or /gakkas/1.json
  def show
  end

  # GET /gakkas/new
  def new
    @gakka = Gakka.new
  end

  # GET /gakkas/1/edit
  def edit
  end

  # POST /gakkas or /gakkas.json
  def create
    @gakka = Gakka.new(gakka_params)

    respond_to do |format|
      if @gakka.save
        format.html { redirect_to @gakka, notice: "Gakka was successfully created." }
        format.json { render :show, status: :created, location: @gakka }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gakka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gakkas/1 or /gakkas/1.json
  def update
    respond_to do |format|
      if @gakka.update(gakka_params)
        format.html { redirect_to @gakka, notice: "Gakka was successfully updated." }
        format.json { render :show, status: :ok, location: @gakka }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gakka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gakkas/1 or /gakkas/1.json
  def destroy
    @gakka.destroy
    respond_to do |format|
      format.html { redirect_to gakkas_url, notice: "Gakka was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gakka
      @gakka = Gakka.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gakka_params
      params.require(:gakka).permit(:gakkamei)
    end
end
