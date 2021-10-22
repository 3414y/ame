class KaitousController < ApplicationController
  before_action :set_kaitou, only: %i[ show edit update destroy ]

  # GET /kaitous or /kaitous.json
  def index
    @kaitous = Kaitou.all
  end

  # GET /kaitous/1 or /kaitous/1.json
  def show
  end

  # GET /kaitous/new
  def new
    @kaitou = Kaitou.new
  end

  # GET /kaitous/1/edit
  def edit
  end

  # POST /kaitous or /kaitous.json
  def create
    @kaitou = Kaitou.new
    @kaitou.hentou = params[:kaitou][:hentou]
    @kaitou.situmon_id = params[:kaitou][:situmon_id]

    if @kaitou.save
      redirect_to situmon_path(@kaitou.situmon_id)
    else
      render :new  
    end
  end

  # DELETE /kaitous/1 or /kaitous/1.json
  def destroy
    @kaitou.destroy
    respond_to do |format|
      format.html { redirect_to kaitous_url, notice: "Kaitou was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kaitou
      @kaitou = Kaitou.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kaitou_params
      params.require(:kaitou).permit(:user_id, :hentou, :situmon_id, :nitiji)
    end
end
