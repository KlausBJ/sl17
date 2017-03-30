class Membermailer < ApplicationMailer
  default from: 'opgave@giftedchildren.dk'

  def pwmail(member)
    @member = member
    mail(to: @member.email, subject: 'Sommerlejr - loginoplysninger')
  end
end
