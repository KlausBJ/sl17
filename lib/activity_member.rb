module ActivityMember
    def find_tickets(invoices)
    @paid_tickets = {}
    @tickets = {}
    invoices.each do |inv|
      @invoice = inv unless inv.paid
      inv.tickets.each do |ticket|
        @paid_tickets[ticket.person_id] = (
        @paid_tickets[ticket.person_id] || []
        ) << ticket.activity_id if inv.paid
        @tickets[ticket.person_id] = (
        @tickets[ticket.person_id] || []
        ) << ticket.activity_id
      end
    end
  end

  def find_conflicts(activities)
    antal = activities.length
    @conflicts = {}
    @activity_names = {}
    for index in (0..(antal - 1)) do
      @activity_names[activities[index].id] = activities[index].name
      for index2 in ((index + 1)..(antal - 1)) do
        break if activities[index2].starttime > activities[index].endtime
        if activities[index].starttime < activities[index2].endtime &&
            activities[index].endtime > activities[index2].starttime
          @conflicts[activities[index].id] = (
          @conflicts[activities[index].id] || []
          ) << activities[index2].id
          @conflicts[activities[index2].id] = (
          @conflicts[activities[index2].id] || []
          ) << activities[index].id
        end
      end
    end
  end

  def activity_line(activity, member_id, p_ids, names, checked, blocked_by, i_paid, age_ok, gender_ok)
    html = %Q[<table>
<tr>
<td style="width: 200px; text-align: left;">
#{activity.s_out.zero? ? '<b>' + activity.name + '</b>' : activity.name}
</td>]
    (0..p_ids.size - 1).each do |i|
      optns = {}
      optns[:disabled] = 'disabled' if
        (activity.s_out.nonzero? && checked[i] == '-') ||
        (activity.deltbet && i_paid[i] == '1') ||
        (blocked_by[i] != '-') ||
        (age_ok[i] || gender_ok[i])
      optns[:title] = (i_paid[i] == '1' && activity.deltbet) ?
        'Betalt' :
        (age_ok[i] || gender_ok[i]) ?
          'Ingen adgang' :
          activity.s_out.nonzero? ?
            'Udsolgt' :
            blocked_by[i] != '-' ?
              "Overlap: #{blocked_by[i]}" :
              names[i].split(' ')[0]
      html += %Q[<td style="width: 70px; text-align: center;">
<input  type="checkbox" name="activity[person_id]" id="activity_person_ids_" value="#{p_ids[i]}"
data-activity-id="#{activity.id}" title="#{optns[:title]}"
#{' checked="checked"' if checked[i] != '-'}
#{'disabled="disabled"' if optns[:disabled]} />
</td>]
      end
      html += "<td>#{'<b>Udsolgt!</b>' if activity.s_out.nonzero?}</td></tr></table>"
  end
end
