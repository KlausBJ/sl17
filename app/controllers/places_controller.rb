# Controller for places, locations for activities
class PlacesController < ApplicationController
  let :admins, :all
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  # GET /places
  def index
    @places = Place.all
  end

  # GET /places/1
  def show; end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit; end

  # POST /places
  def create
    @place = Place.new(place_params)

    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /places/1
  def update
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /places/1
  def destroy
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_place
    @place = Place.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def place_params
    params.require(:place).permit(:name, :description, :limited)
  end
end
