# Controller for activities - handles ajax calls to book tickets
class ActivitiesController < ApplicationController
  let :admins, :all
  skip_before_filter :verify_authenticity_token, only: :toggle
  before_action :set_activity, only: [:show, :edit, :update, :destroy, :toggle, :member]

  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.all
  end

  # GET /activities/1
  # GET /activities/1.json
  def show; end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit; end

  # POST /activities
  def create
    @activity = Activity.new(activity_params)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /activities/1
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /activities/1
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity destroyed.' }
    end
  end

  def import
    Activity.import(params[:file])
    redirect_to root_url, notice: 'Aktiviteter importeret.'
  end

  def toggle
    respond_to do |format|
      format.js do
        @activity.ptoggle activity_params[:member_id],
                          activity_params[:person_ids]
        @member = Member.find(activity_params[:member_id])
        render layout: false
      end
    end
  end

  def member
    @activity = Activity.find(member_params[:id])
    @member = Member.find(member_params[:member_id])
    render layout: false
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_activity
    @activity = Activity.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def member_params
    #ap = activity_params

    [:id, :member_id].each_with_object(params) do |key, obj|
      obj.require(key)
    end
  end

  def toggle_params
    # hmmm, samme øvelse som ovenstående kunne måske hjælpe? kræver form_tag, tror jeg...
    # url på samme måde som activities#member og kun person_ids: [] i form
    #[:id, :member_id, :person_ids].each_with_object(params) do |key, obj|
    #  obj.require(key)
    #end
    params.require(:activity).permit(:id, :member_id, person_ids: [])
  end

  def activity_params
    params.require(:activity).permit(
      :name, :starttime, :endtime, :person_id, :number, :deltbet, :place_id,
      :member_id, person_ids: []
    )
  end
end
