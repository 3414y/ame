class KyoukasController < ApplicationController
  before_action :set_kyouka, only: %i[ show edit update destroy ]

  # GET /kyoukas or /kyoukas.json
  def index
    @kyoukas = Kyouka.all
  end

  # GET /kyoukas/1 or /kyoukas/1.json
  def show
  end

  # GET /kyoukas/new
  def new
    @kyouka = Kyouka.new
  end

  # GET /kyoukas/1/edit
  def edit
  end

  # POST /kyoukas or /kyoukas.json
  def create
    @kyouka = Kyouka.new(kyouka_params)

    respond_to do |format|
      if @kyouka.save
        format.html { redirect_to @kyouka, notice: "Kyouka was successfully created." }
        format.json { render :show, status: :created, location: @kyouka }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kyouka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kyoukas/1 or /kyoukas/1.json
  def update
    respond_to do |format|
      if @kyouka.update(kyouka_params)
        format.html { redirect_to @kyouka, notice: "Kyouka was successfully updated." }
        format.json { render :show, status: :ok, location: @kyouka }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kyouka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kyoukas/1 or /kyoukas/1.json
  def destroy
    @kyouka.destroy
    respond_to do |format|
      format.html { redirect_to kyoukas_url, notice: "Kyouka was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kyouka
      @kyouka = Kyouka.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kyouka_params
      params.require(:kyouka).permit(:gakunen, :senkou, :namae, :narabi)
    end
end
