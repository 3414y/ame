class TensusController < ApplicationController
  before_action :set_tensu, only: %i[ show edit update destroy ]

  # GET /tensus or /tensus.json
  def index
    @tensus = Tensu.all
  end

  # GET /tensus/1 or /tensus/1.json
  def show
  end

  # GET /tensus/new
  def new
    @tensu = Tensu.new
  end

  # GET /tensus/1/edit
  def edit
  end

  # POST /tensus or /tensus.json
  def create
    @tensu = Tensu.new(tensu_params)

    respond_to do |format|
      if @tensu.save
        format.html { redirect_to @tensu, notice: "Tensu was successfully created." }
        format.json { render :show, status: :created, location: @tensu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tensu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tensus/1 or /tensus/1.json
  def update
    respond_to do |format|
      if @tensu.update(tensu_params)
        format.html { redirect_to @tensu, notice: "Tensu was successfully updated." }
        format.json { render :show, status: :ok, location: @tensu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tensu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tensus/1 or /tensus/1.json
  def destroy
    @tensu.destroy
    respond_to do |format|
      format.html { redirect_to tensus_url, notice: "Tensu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tensu
      @tensu = Tensu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tensu_params
      params.require(:tensu).permit(:seiseki_id, :kyouka_id, :tokuten, :hyoutei)
    end
end
