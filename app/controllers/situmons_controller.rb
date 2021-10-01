class SitumonsController < ApplicationController
  before_action :set_situmon, only: %i[ show edit update destroy ]

  # GET /situmons or /situmons.json
  def index
    @situmons = Situmon.all
  end

  # GET /situmons/1 or /situmons/1.json
  def show
  end

  # GET /situmons/new
  def new
    @situmon = Situmon.new
  end

  # GET /situmons/1/edit
  def edit
  end

  # POST /situmons or /situmons.json
  def create
    @situmon = Situmon.new(situmon_params)

    respond_to do |format|
      if @situmon.save
        format.html { redirect_to @situmon, notice: "Situmon was successfully created." }
        format.json { render :show, status: :created, location: @situmon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @situmon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /situmons/1 or /situmons/1.json
  def update
    respond_to do |format|
      if @situmon.update(situmon_params)
        format.html { redirect_to @situmon, notice: "Situmon was successfully updated." }
        format.json { render :show, status: :ok, location: @situmon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @situmon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /situmons/1 or /situmons/1.json
  def destroy
    @situmon.destroy
    respond_to do |format|
      format.html { redirect_to situmons_url, notice: "Situmon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_situmon
      @situmon = Situmon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def situmon_params
      params.require(:situmon).permit(:user_id, :naiyou, :kategori, :nitiji)
    end
end
