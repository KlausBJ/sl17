# Controller for activities - handles ajax calls to book tickets
class ActivitiesController < ApplicationController
  let :admins, :all
  let :all, [:toggle]

  include ActivityMember
  helper_method :activity_line

  skip_before_filter :verify_authenticity_token, only: :toggle
  before_action :set_activity, only: [:show, :edit, :update, :destroy, :toggle]

  # GET /activities
  # GET /activities.json
  def index
    #@activities = Activity.all
    @activities = Activity.find_by_sql('
  select
  activities.id,
	places.name as place_name,
	activities.name,
	starttime,
	endtime,
  person_id,
	place_id,
	people.name as tovholder,
	acts_sold_out.sold_out
	from activities
		inner join acts_sold_out
			on activities.id = acts_sold_out.id
		left outer join places
			on activities.place_id = places.id
		left outer join people
			on activities.person_id = people.id
	group by activities.id
	order by starttime, place_id
    ')
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
    #@sold_out = Activity.sold_out
  end

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
    redirect_to activities_path, notice: 'Aktiviteter importeret.'
  end

  def toggle
    respond_to do |format|
      format.js do
        invoice_id = activity_params[:invoice_id]
        if activity_params[:checked] == 'true'
          @activity.add invoice_id, activity_params[:person_id]
        else
          @activity.remove activity_params[:person_id]
        end
        @invoice = Invoice.find_by_sql("select * from invoices_total_paid where id = #{invoice_id}")[0]
        @member = Member.find(activity_params[:member_id])
        #updated_activities = (@member.update_sold_out + (@activity.conflicts.map(&:id) << @activity.id)).join(',')
        member_id = @member.id
        sold_out = activity_params[:sold_out]
        sold_out = '0' if sold_out == ''
        @activities = Activity.find_by_sql("
select 	activities.id,
			activities.name,
			activities.starttime,
			activities.deltbet,
			activities.altbet,
      activities.conflict_ids,
			sold_out,
			ma_people.member_id,
			acts_sold_out.sold_out as s_out,
			group_concat(ma_people.id order by ma_people.id) as p_ids,
			group_concat(ma_people.name order by ma_people.id) as p_names,
			group_concat(ifnull(ma_acts_blocked_by.blocked_by,'-') order by ma_people.id) as blckd_by,
			group_concat(ifnull(tickets.id,'-') order by ma_people.id) as t_ids,
			group_concat(ifnull(invoices.paid,'0') order by ma_people.id)as i_paid,
			group_concat(
				case
					when concat('0,', activities.ptypes_ok, ',0') like concat('%,', cast(ma_people.ptype_id as char(10)),',%') then true
					when ma_people.ptype_id > 2 and activities.first_date < ma_people.aargang and activities.last_date > ma_people.aargang then true
					when activities.min_age is null and activities.max_age is null then true
					else false
				end order by ma_people.id
			) as age_ok,
			group_concat(
				case
					when gender = 0 then true
					when ma_people.koen = 'K' and gender = 1 then true
		      when ma_people.koen = 'M' and gender = 2 then true
					else false
				end order by ma_people.id
			) as gender_ok
	from activities
	cross join (select * from people where member_id = #{member_id}) as ma_people
	left outer join acts_sold_out
		on activities.id = acts_sold_out.id
	left outer join (
    select activities.id, tickets.person_id, group_concat(tickets.activity_name separator ';') as blocked_by
  from activities
    inner join tickets
      on concat('0,', activities.conflict_ids, ',0') like concat('%,', cast(tickets.activity_id as char(10)),',%')
    inner join invoices
      on tickets.invoice_id = invoices.id
        and invoices.member_id = #{member_id}
  where `show` = 1
  group by activities.id, person_id
  order by person_id) as ma_acts_blocked_by
		on ma_people.id = ma_acts_blocked_by.person_id
			and activities.id = ma_acts_blocked_by.id
	left outer join tickets
		on activities.id = tickets.activity_id and
			ma_people.id = tickets.person_id
	left outer join invoices
		on tickets.invoice_id = invoices.id
  where (
          (activities.id in (#{sold_out}) and sold_out = 0) or
          (activities.id not in (#{sold_out}) and sold_out = 1) or
          concat('0,', conflict_ids, ',0') like '%,#{@activity.id},%' or
          activities.id = #{@activity.id}
  ) and activities.show = 1
	group by activities.id, ma_people.member_id
	order by starttime, endtime;
")
        render layout: false
      end
    end
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
    params.require(:activity).permit(:id, :member_id, :person_id, :invoice_id, :checked)
  end

  def activity_params
    params.require(:activity).permit(
      :name, :starttime, :endtime, :person_id, :number, :deltbet, :place_id,
      :member_id, :person_id, :invoice_id, :checked, :sold_out
    )
  end
end
