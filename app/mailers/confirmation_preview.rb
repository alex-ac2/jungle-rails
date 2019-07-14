class ConfirmationPreview < ActionMailer::Preview

  def welcome
    Confirmation.confirm(order)
  end

end