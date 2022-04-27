class ShootLocationsController < ApplicationController
  before_action :set_shoot_location, only: %i[ show edit update destroy ]

  # GET /shoot_locations or /shoot_locations.json
  def index
    @shoot_locations = ShootLocation.all
  end

  # GET /shoot_locations/1 or /shoot_locations/1.json
  def show
  end

  # GET /shoot_locations/new
  def new
    @shoot_location = ShootLocation.new
  end

  # GET /shoot_locations/1/edit
  def edit
  end

  # POST /shoot_locations or /shoot_locations.json
  def create
    @shoot_location = ShootLocation.new(shoot_location_params)

    respond_to do |format|
      if @shoot_location.save
        format.html { redirect_to shoot_location_url(@shoot_location), notice: "Shoot location was successfully created." }
        format.json { render :show, status: :created, location: @shoot_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shoot_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoot_locations/1 or /shoot_locations/1.json
  def update
    respond_to do |format|
      if @shoot_location.update(shoot_location_params)
        format.html { redirect_to shoot_location_url(@shoot_location), notice: "Shoot location was successfully updated." }
        format.json { render :show, status: :ok, location: @shoot_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shoot_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoot_locations/1 or /shoot_locations/1.json
  def destroy
    @shoot_location.destroy

    respond_to do |format|
      format.html { redirect_to shoot_locations_url, notice: "Shoot location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoot_location
      @shoot_location = ShootLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shoot_location_params
      params.require(:shoot_location).permit(:name, :series_id)
    end
end
