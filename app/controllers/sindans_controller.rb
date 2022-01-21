class SindansController < ApplicationController
  before_action :set_sindan, only: %i[ show edit update destroy ]

  # GET /sindans or /sindans.json
  def index
    @sindans = Sindan.all
  end

  # GET /sindans/1 or /sindans/1.json
  def show
  end

  # GET /sindans/new
  def new
    #@sindan = Sindan.new
    #@sindans = Sindan.includes(:kigyous).references(:kigyous).search(params[:keyword])

    if params[:search].present?
    @kigyous = Kigyou.search_kigyoumei(params[:kigyoumei]).search_syokusyu(params[:syokusyumei]).search_kennnai(params[:kennai])
    @syuusyokus = Syuusyoku.search_gakkoumei(params[:gakkoumei]).search_gakka(params[:gakkamei]).search_kennai(params[:kennai])
    else
      @kigyous = []
      @syuusyokus = []
    end
  end

  # GET /sindans/1/edit
  def edit
  end

  # POST /sindans or /sindans.json
  def create
    @sindans = Sindan.includes(:kigyous).references(:kigyous).search(params[:keyword])
  end

  # PATCH/PUT /sindans/1 or /sindans/1.json
  def update
    respond_to do |format|
      if @sindan.update(sindan_params)
        format.html { redirect_to @sindan, notice: "Sindan was successfully updated." }
        format.json { render :show, status: :ok, location: @sindan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sindan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sindans/1 or /sindans/1.json
  def destroy
    @sindan.destroy
    respond_to do |format|
      format.html { redirect_to sindans_url, notice: "Sindan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_sindan
      @sindan = Sindan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sindan_params
      params.require(:sindan).permit(:sinrosaki, :kennai, :syokusyu, :hyoutei)
    end

end

