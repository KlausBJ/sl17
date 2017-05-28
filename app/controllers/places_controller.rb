# Controller for places, locations for activities
class PlacesController < ApplicationController
  require 'tod'
  require 'tod/core_extensions'
  let :admins, :all
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  # GET /places
  def index
    @places = Place.find_by_sql(%q[
  select
    ifnull(places.id,1000) as id,
    ifnull(places.name,'Ekstern lokation') as name,
    group_concat(activities.name order by starttime) as a_names,
    group_concat(activities.id order by starttime) as a_ids,
    group_concat(starttime order by starttime) as starttimes,
    group_concat(endtime order by starttime) as endtimes,
    group_concat(ifnull(people.name,'-') order by starttime) as tovholdere,
    group_concat(acts_sold_out.sold_out order by starttime) as sold_out
  from
    activities
      inner join acts_sold_out
        on activities.id = acts_sold_out.id
      left outer join places
        on activities.place_id = places.id
      left outer join people
        on activities.person_id = people.id
  where places.id in (14,15,16,17,18,19,20,21,22)
  group by places.id
  order by id;
    ])
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
