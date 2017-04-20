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
end