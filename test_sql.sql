q7:
select activities.*,
	ma_people.member_id, 
	acts_sold_out.sold_out as s_out,
	group_concat(ma_people.id) as p_ids, 
	group_concat(ma_people.name) as p_names, 
	group_concat(ifnull(ma_acts_blocked_by.blocked_by,'-')) as blckd_by,
	group_concat(ifnull(tickets.id,'-')) as t_ids, 
	group_concat(ifnull(invoices.paid,'0'))as i_paid,
	group_concat(
		case
			when concat('0,', activities.ptypes_ok, ',0') like concat('%,', cast(ma_people.ptype_id as char(10)),',%') then true
			when ma_people.ptype_id > 2 and activities.first_date < ma_people.aargang and activities.last_date > ma_people.aargang then true
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
	cross join (select * from people where member_id = 354) as ma_people
	left outer join acts_sold_out
		on activities.id = acts_sold_out.id
	left outer join (
    select activities.id, tickets.person_id, group_concat(tickets.activity_name separator ';') as blocked_by
  from activities 
    inner join tickets 
      on concat('0,', activities.conflict_ids, ',0') like concat('%,', cast(tickets.activity_id as char(10)),',%')
    inner join invoices 
      on tickets.invoice_id = invoices.id
        and invoices.member_id = 354
  where `show` = 1
  group by activities.id, person_id) as ma_acts_blocked_by
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
