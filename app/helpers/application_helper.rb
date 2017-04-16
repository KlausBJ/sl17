# Helper for application (top level)
module ApplicationHelper
  include ActionView::Helpers::NumberHelper

  def dkk(number)
    number_to_currency(number, unit: '', delimiter: '.', separator: ',')
  end
end
