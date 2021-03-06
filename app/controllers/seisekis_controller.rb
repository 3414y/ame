class SeisekisController < ApplicationController
  before_action :set_seiseki, only: %i[ show edit update destroy ]

  # GET /seisekis or /seisekis.json
  def index
    @seisekis = Seiseki.all
    @users = User.all
  end

  # GET /seisekis/1 or /seisekis/1.json
  def show
    user_id = @seiseki.user_id  
    @seisekis_1 = Seiseki.where("user_id = ? and gakunen = ?",user_id,1).order(:gakunen,:gakki)
    @seisekis_2 = Seiseki.where("user_id = ? and gakunen = ?",user_id,2).order(:gakunen,:gakki)
    @seisekis_3 = Seiseki.where("user_id = ? and gakunen = ?",user_id,3).order(:gakunen,:gakki)
  end

  # GET /seisekis/new
  def new
    @seiseki = Seiseki.new
  end

  # GET /seisekis/1/edit
  def edit
  end
  
  def search
    @users = User.where("gakunen = ? and kumi = ?", params[:gakunen], params[:kumi])
    @gakunen = params[:gakunen]
    @kumi = params[:kumi]
    @seisekis = Seiseki.all
    render "index"
  end

  # POST /seisekis or /seisekis.json
  def create
    @seiseki = Seiseki.new(seiseki_params)

    respond_to do |format|
      if @seiseki.save
        format.html { redirect_to @seiseki, notice: "Seiseki was successfully created." }
        format.json { render :show, status: :created, location: @seiseki }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @seiseki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seisekis/1 or /seisekis/1.json
  def update
    respond_to do |format|
      if @seiseki.update(seiseki_params)
        format.html { redirect_to @seiseki, notice: "Seiseki was successfully updated." }
        format.json { render :show, status: :ok, location: @seiseki }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @seiseki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seisekis/1 or /seisekis/1.json
  def destroy
    @seiseki.destroy
    respond_to do |format|
      format.html { redirect_to seisekis_url, notice: "Seiseki was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seiseki
      @seiseki = Seiseki.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seiseki_params
      params.require(:seiseki).permit(:user_id, :gakunen, :gakki, tensus_attributes:[:id,:tokuten, :hyoutei])
    end
end
