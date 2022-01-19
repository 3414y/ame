class SitumonsController < ApplicationController
  before_action :set_situmon, only: %i[ show edit update destroy ]

  # GET /situmons or /situmons.json
  def index
    @situmon = Situmon.new
  end

  # GET /situmons/1 or /situmons/1.json
  def show
    if params[:name].present?
    @situmon.kaitous.each do |k|
      if k.kidoku == 0
        @kaitou = Kaitou.find(k.id)
        @kaitou.kidoku = 1
        @kaitou.save
      end
    end  
    end
  end

  # GET /situmons/new
  def new 
    @situmon = Situmon.new 
    @situmon_singaku = Situmon.where(kategori:2).order(nitiji: :desc).first(5)
    @situmon_syuusyoku = Situmon.where(kategori:1).order(nitiji: :desc).first(5)
    @situmon.user_id = current_user.id
  end

  # GET /situmons/1/edit
  def edit
    @situmon = Situmon.new
    @situmon_singaku = Situmon.where(kategori:2).order(nitiji: :desc).first(5)
    @situmon_syuusyoku = Situmon.where(kategori:1).order(nitiji: :desc).first(5)
  end

  def search
    @situmons_singaku_gakkou = Situmon.where(kategori:2).where(kategori2:4).order(nitiji: :desc)
  end  
  def search2
    @situmons_singaku_benkyou = Situmon.where(kategori:2).where(kategori2:3).order(nitiji: :desc)
  end
  def search3
    @situmons_syuusyoku_benkyou = Situmon.where(kategori:1).where(kategori2:3).order(nitiji: :desc)
  end
  def search4
    @situmons_syuusyoku_kigyou = Situmon.where(kategori:1).where(kategori2:4).order(nitiji: :desc)
  end  

  # POST /situmons or /situmons.json
  def create
    @situmon = Situmon.new(situmon_params)
    @situmon_singaku = Situmon.where(kategori:2).order(nitiji: :desc).first(5)
    @situmon_syuusyoku = Situmon.where(kategori:1).order(nitiji: :desc).first(5)
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
    @situmon_singaku = Situmon.where(kategori:2).order(nitiji: :desc).first(5)
    @situmon_syuusyoku = Situmon.where(kategori:1).order(nitiji: :desc).first(5)
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
      format.html { redirect_to new_situmon_url, notice: "Situmon was successfully destroyed." }
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
      params.require(:situmon).permit(:user_id, :naiyou, :kategori, :kategori2, :nitiji)
    end

    


end
