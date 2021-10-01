class KigyousController < ApplicationController
  before_action :set_kigyou, only: %i[ show edit update destroy ]

  # GET /kigyous or /kigyous.json
  def index
    @kigyous = Kigyou.all
  end

  # GET /kigyous/1 or /kigyous/1.json
  def show
  end

  # GET /kigyous/new
  def new
    @kigyou = Kigyou.new
  end

  # GET /kigyous/1/edit
  def edit
  end

  # POST /kigyous or /kigyous.json
  def create
    @kigyou = Kigyou.new(kigyou_params)

    respond_to do |format|
      if @kigyou.save
        format.html { redirect_to @kigyou, notice: "Kigyou was successfully created." }
        format.json { render :show, status: :created, location: @kigyou }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kigyou.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kigyous/1 or /kigyous/1.json
  def update
    respond_to do |format|
      if @kigyou.update(kigyou_params)
        format.html { redirect_to @kigyou, notice: "Kigyou was successfully updated." }
        format.json { render :show, status: :ok, location: @kigyou }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kigyou.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kigyous/1 or /kigyous/1.json
  def destroy
    @kigyou.destroy
    respond_to do |format|
      format.html { redirect_to kigyous_url, notice: "Kigyou was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kigyou
      @kigyou = Kigyou.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kigyou_params
      params.require(:kigyou).permit(:kigyoumei, :syokusyu_id, :kennnai, :khp, :hyoutei)
    end
end
