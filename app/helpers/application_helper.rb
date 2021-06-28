module ApplicationHelper
  def fmt_dollars(amt)
    sprintf("$%0.2f", amt)
  end
end
