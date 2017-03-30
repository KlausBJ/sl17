class ActivitiesController < ApplicationController
  let :admins, :all
  skip_before_filter  :verify_authenticity_token, only: :toggle
  before_action :set_activity, only: [:show, :edit, :update, :destroy, :toggle]

  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.all
  end

  # GET /activities/1
  # GET /activities/1.json
  def show end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit end

  # POST /activities
  # POST /activities.json
  def create
    @activity = Activity.new(activity_params)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    Activity.import(params[:file])
    redirect_to root_url, notice: 'Aktiviteter importeret.'
  end

  def toggle
    respond_to do |format|
      format.js do
        current_people = @activity.people.where(member_id: toggle_params[:member_id])
        to_be = toggle_params[:person_ids]
        to_remove = current_people - to_be
        to_add = to_be - current_people
        if to_add.any?
          to_add.each do |person|
            if Ticket.create(activity: @activity, person: person)
              noticetext = 'Billet tilføjet.'
              # deaktivér konfliktende
            else
              noticetext = 'Billetten er desværre ikke tilgængelig.'
              # opdatér aktiviteten
            end
          end
        elsif to_remove.any?
          to_remove.each do |person|
            Ticket.find_by_activity_and_person(activity: @activity, person: person).destroy
            noticetext = 'Billet slettet.'
            # aktivér konfliktende
          end
        end
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toggle_params
      params.require(:activity).permit(:member_id, :person_ids)
    end

    def activity_params
      params.require(:activity).permit(:name, :starttime, :endtime, :person_id, :number, :deltbet, :place_id, :member_id, person_ids:[])
    end
end
