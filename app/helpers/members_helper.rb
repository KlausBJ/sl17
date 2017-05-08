# Helper for members (central model)
module MembersHelper
  def p_deletable?(p, id)
    p.invoice_paid.zero? &&
      (id == p.member_id || current_clearance_levels.include?(:admin)) &&
      (p.ptype_id != 1 || @member.adults > 1 || @member.children.zero?)
  end
end
