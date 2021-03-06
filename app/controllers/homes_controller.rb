class HomesController < ApplicationController
  before_action :set_home, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  impressionist actions: [:show,:index],unique: [:session_hash]
  rescue_from ActionController::RenderError, with: :redirect_to_default
  # GET /homes or /homes.json
  def index
    @homes = Home.all
    @q = Home.ransack(params[:q])
    @homes = @q.result(distinct: true)
  end
  def correct_user
    @homes =  current_user.homes.find_by(id: params[:id])
    redirect_to homes_path, notice: "これはあなたの家ではないので、あなたには権利がありません" if @homes.nil?
  end
  # GET /homes/1 or /homes/1.json
  def show
    @homes = Home.find(params[:id])
    impressionist(@homes, "unique view", :unique => [:session_hash])
    @homelike = Homelike.new
    @home_review = HomeReview.new
  end

  # GET /homes/new
  def new
    @home = current_user.homes.build
    # @home = Home.new
  end

  # GET /homes/1/edit
  def edit
  end
  # POST /homes or /homes.json
  def create
    @home = current_user.homes.build(home_params)
    @home.user_id = current_user.id
    respond_to do |format|
      if @home.save
        format.html { redirect_to @home, notice: "Home was successfully created." }
        format.json { render :show, status: :created, location: @home }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homes/1 or /homes/1.json
  def update
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: "Home was successfully updated." }
        format.json { render :show, status: :ok, location: @home }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homes/1 or /homes/1.json
  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      format.json { head :no_content }
    end
  end
  def publish
    homes = Home.find params[:id]
    redirect_to :back
  end

  private

  def redirect_to_default
    redirect_to root_path
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = Home.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def home_params
      params.require(:home).permit(:name, :address, :room_number, :price, :user_id,:detail,:home_avatar, detail_image:[])
    end
end
