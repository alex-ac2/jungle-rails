class OrderSummaryPreview < ActionMailer::Preview

  def welcome
    OrderSummary.welcome_email(user)
  end

end