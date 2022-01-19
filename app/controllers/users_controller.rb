class UsersController < ApplicationController
  skip_before_action :logged_in_user, only: %i[ new create ]
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  
  def edit
    @situmons = Situmon.where("user_id = ? ",current_user.id)
  end

  
  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        senkou = 0
        case @user.kumi
        when 1,2,3
          senkou = 1
        when 4
          senkou = 2
        end
        (1..3).each do |gakunen|
          (1..3).each do |gakki|
            seiseki = Seiseki.create(user_id: @user.id,gakunen:gakunen,gakki:gakki)
            Kyouka.where(gakunen:gakunen,senkou:senkou).each do |kyouka|
              Tensu.create(seiseki_id: seiseki.id,kyouka_id: kyouka.id,tokuten: 0)
            end
          end
        end
        format.html { redirect_to @user, notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:akaunto, :pasuwado, :gakunen, :kumi, :simei)
    end
end
