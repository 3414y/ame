class SyokusyusController < ApplicationController
  before_action :set_syokusyu, only: %i[ show edit update destroy ]

  # GET /syokusyus or /syokusyus.json
  def index
    @syokusyus = Syokusyu.all
  end

  # GET /syokusyus/1 or /syokusyus/1.json
  def show
  end

  # GET /syokusyus/new
  def new
    @syokusyu = Syokusyu.new
  end

  # GET /syokusyus/1/edit
  def edit
  end

  # POST /syokusyus or /syokusyus.json
  def create
    @syokusyu = Syokusyu.new(syokusyu_params)

    respond_to do |format|
      if @syokusyu.save
        format.html { redirect_to @syokusyu, notice: "職種を追加しました。" }
        format.json { render :show, status: :created, location: @syokusyu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syokusyu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syokusyus/1 or /syokusyus/1.json
  def update
    respond_to do |format|
      if @syokusyu.update(syokusyu_params)
        format.html { redirect_to @syokusyu, notice: "職種情報を更新しました。" }
        format.json { render :show, status: :ok, location: @syokusyu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syokusyu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syokusyus/1 or /syokusyus/1.json
  def destroy
    @syokusyu.destroy
    respond_to do |format|
      format.html { redirect_to syokusyus_url, notice: "削除しました。" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syokusyu
      @syokusyu = Syokusyu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syokusyu_params
      params.require(:syokusyu).permit(:syokusyumei)
    end
end
