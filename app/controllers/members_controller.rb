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
  select  activities.*,
          ma_people.member_id,
          acts_sold_out.sold_out as s_out,
          group_concat(ma_people.id) as p_ids,
          group_concat(ma_people.name) as p_names,
          group_concat(ifnull(ma_acts_blocked_by.blocked_by,'-')) as blckd_by,
          group_concat(ifnull(ma_tickets_invoices.id,'-')) as t_ids,
          group_concat(ifnull(ma_tickets_invoices.paid,'0'))as i_paid,
          group_concat(
            case
              when concat('0,', activities.ptypes_ok, ',0') like
                  concat('%,', cast(ma_people.ptype_id as char(10)),',%') then true
              when ma_people.ptype_id > 2 and activities.first_date <
                  ma_people.aargang and activities.last_date > ma_people.aargang then true
              when activities.min_age is null and activities.max_age is null then true
              else false
            end
          ) as age_ok,
          group_concat(
            case
              when gender = 0 then true
              when ma_people.koen = 'K' and gender = 1 then true
              when ma_people.koen = 'M' and gender = 2 then true
              else false
            end
          ) as gender_ok
	from activities
	cross join (select * from people where member_id = #{member_id} order by people.id) as ma_people
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
  order by tickets.person_id) as ma_acts_blocked_by
		on ma_people.id = ma_acts_blocked_by.person_id
			and activities.id = ma_acts_blocked_by.id
  left outer join
  (
  select invoices.paid, tickets.id, tickets.activity_id, tickets.person_id
  from invoices
    inner join tickets
      on invoices.id = tickets.invoice_id
    where invoices.member_id = #{member_id}
  ) as ma_tickets_invoices
    on ma_tickets_invoices.activity_id = activities.id
      and ma_tickets_invoices.person_id = ma_people.id
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
