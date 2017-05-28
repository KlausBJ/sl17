# Controller for members, the central class
class MembersController < ApplicationController
  let :admins,
      [:index, :edit, :show, :email, :generate_password, :update, :import, :show2]
  let :guests, [:index, :email, :generate_password, :update]
  let [:members, :testers], [:index, :show, :email, :generate_password, :update]

  include ActivityMember

  before_action :set_member, only: [:show, :edit, :update, :destroy, :email, :show2]

  # GET /members
  def index
    return @members = Member.find_by_sql("select * from member_people_paid order by number") unless params[:search]
    search = params[:search]
    @members = Member.find_by_sql(
      "select * from member_people_paid
        where name LIKE '%#{search}%'
          OR number LIKE '%#{search}%'
          OR email LIKE '%#{search}%'
        order by number")
  end

  def show2
    @member.update_sold_out
    @activities = Activity.find_by_sql(
        "select * from member_activities where member_id = #{@member.id} order by starttime, endtime"
    )
  end

  # GET /members/1
  def show
    if @member.password.nil?
      @member.generate_password
      @member.reload
    end
    @member.update_sold_out
    member_id = @member.id
    @activities = Activity.find_by_sql("
    select 	activities.id,
			activities.name,
			activities.starttime,
			activities.deltbet,
			activities.altbet,
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
	where activities.show = 1
	group by activities.id, ma_people.member_id
	order by starttime, endtime;
")
    @person = Person.new
    @people = Person.find_by_sql(
        "select * from people_index where member_id = #{member_id}
             or host_member = #{@member.number} order by host_member"
    )
    # @guest_people = Person.find_by_sql(
    #    "select * from people_index where host_member = #{@member.id}"
    # )
    @invoices = Invoice.find_by_sql("select * from invoices_total_paid where member_id = #{member_id}
                                     order by i_paid desc, id")
    if @invoices.last.i_paid.nonzero?
      @member.invoices << Invoice.create(member_id: @member.id, paid:false)
      @invoices = Invoice.find_by_sql("select * from invoices_total_paid where member_id = #{member_id}
                                       order by i_paid desc, id")
    end

    @tasks = Task.find_by_sql("
  select 	tasks_assignments.id,
			name,
			description,
			number,
			max,
			priority,
			time,
      activity_id,
			activity_name,
			taken,
			taken_index,
			early,
			group_concat(p_id order by p_id) as p_ids,
			group_concat(p_name order by p_id) as p_names,
			group_concat(ptype_id order by p_id) as ptype_ids,
			group_concat(ifnull(task_id, '-') order by p_id) as a_ids,
			group_concat(ifnull(p_as.as_exist,'-') order by p_id) as has_tasks
	from
      (select 	tasks.id,
            tasks.name,
            tasks.description,
            tasks.number,
            tasks.max,
            tasks.priority,
            tasks.time,
            activities.id as activity_id,
            activities.name as activity_name,
            count(assignments.id) as taken,
            count(assignments.id) / tasks.number as taken_index,
            if (tasks.time < '2017-07-09 12:00:00', 1, 0) as early
        from tasks
        left outer join activities
        on activities.id = tasks.activity_id
        left outer join assignments
        on assignments.task_id = tasks.id
        group by tasks.id) as tasks_assignments
	cross join
      (select people.id as p_id, people.name as p_name, people.ptype_id from people where member_id = #{@member.id} and task = 1) as tpeople
  left outer join
          assignments as t_assignments on tpeople.p_id = t_assignments.person_id and tasks_assignments.id = t_assignments.task_id
   left outer join (select people.id, case when exists (select id from assignments where person_id = people.id) then 1 else 0 end as as_exist from people) as p_as
   on tpeople.p_id = p_as.id
	where time > NOW()
	group by id
	order by time;")
  end

  def email; end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit; end

  # POST /members
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html do
          redirect_to @member, notice: 'Member was successfully created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /members/1
  def update
    respond_to do |format|
      if @member.update(member_params)
        @member.generate_password
        Membermailer.pwmail(@member).deliver_now
        if session[:member_id].zero?
          format.html do
            redirect_to login_path,
                        notice:
                        'Medlemsnr. og adgangskode er sendt til dig i en email.'
          end
        else
          format.html do
            redirect_to @member, notice: 'Email opdateret. '\
            'Medlemsnr. og adgangskode er sendt til dig i en email.'
          end
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /members/1
  def destroy
    @member.destroy
    respond_to do |format|
      format.html do
        redirect_to members_url,
                    notice:
                    'Member was successfully destroyed.'
      end
    end
  end

  def import
    Member.import(params[:file])
    redirect_to root_url, notice: 'Medlemmer importeret.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_member
    @member = Member.find_by_sql("select member_host.*, adults, children from member_host inner join
                                      member_adults_children on member_host.id = member_adults_children.id
                                      where member_host.id = #{params[:id]} limit 1")[0]
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def member_params
    params.require(:member).permit(:number, :name, :email, :search)
  end
end
