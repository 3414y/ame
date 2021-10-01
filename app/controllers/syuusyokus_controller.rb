class SyuusyokusController < ApplicationController
  before_action :set_syuusyoku, only: %i[ show edit update destroy ]

  # GET /syuusyokus or /syuusyokus.json
  def index
    @syuusyokus = Syuusyoku.all
  end

  # GET /syuusyokus/1 or /syuusyokus/1.json
  def show
  end

  # GET /syuusyokus/new
  def new
    @syuusyoku = Syuusyoku.new
  end

  # GET /syuusyokus/1/edit
  def edit
  end

  # POST /syuusyokus or /syuusyokus.json
  def create
    @syuusyoku = Syuusyoku.new(syuusyoku_params)

    respond_to do |format|
      if @syuusyoku.save
        format.html { redirect_to @syuusyoku, notice: "Syuusyoku was successfully created." }
        format.json { render :show, status: :created, location: @syuusyoku }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syuusyoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syuusyokus/1 or /syuusyokus/1.json
  def update
    respond_to do |format|
      if @syuusyoku.update(syuusyoku_params)
        format.html { redirect_to @syuusyoku, notice: "Syuusyoku was successfully updated." }
        format.json { render :show, status: :ok, location: @syuusyoku }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syuusyoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syuusyokus/1 or /syuusyokus/1.json
  def destroy
    @syuusyoku.destroy
    respond_to do |format|
      format.html { redirect_to syuusyokus_url, notice: "Syuusyoku was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syuusyoku
      @syuusyoku = Syuusyoku.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syuusyoku_params
      params.require(:syuusyoku).permit(:gakkoumei, :gakka_id, :kennai, :shp, :hyoutei)
    end
end
