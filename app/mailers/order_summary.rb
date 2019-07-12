class OrderSummary < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url
    mail(to: @user, subject: "Order Confirmation and Summary")
  end


end
