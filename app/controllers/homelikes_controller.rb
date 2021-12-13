class HomelikesController < ApplicationController
  before_action :set_homelike, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /homelikes or /homelikes.json
  def index
    @homes = Home.all
    @homelikes = Homelike.all
  end

  # GET /homelikes/1 or /homelikes/1.json
  def show
    @homes = Home.all
  end

  # GET /homelikes/new
  def new
    @homelike = Homelike.new
  end

  # GET /homelikes/1/edit
  def edit
  end

  # POST /homelikes or /homelikes.json
  def create
    @homelike = Homelike.new(homelike_params)

    respond_to do |format|
      if @homelike.save
        url = "/homes/" + @homelike.home_id.to_s
        format.html { redirect_to url, notice: "Homelike was successfully created." }
        format.json { render :show, status: :created, location: @homelike }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @homelike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homelikes/1 or /homelikes/1.json
  def update
    respond_to do |format|
      if @homelike.update(homelike_params)
        format.html { redirect_to @homelike, notice: "Homelike was successfully updated." }
        format.json { render :show, status: :ok, location: @homelike }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @homelike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homelikes/1 or /homelikes/1.json
  def destroy
    @homelike.destroy
    respond_to do |format|
      format.html { redirect_to homelikes_url, notice: "Homelike was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homelike
      @homelike = Homelike.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def homelike_params
      params.require(:homelike).permit(:user_id, :home_id, :status)
    end
end
