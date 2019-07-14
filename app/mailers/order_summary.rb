class OrderSummary < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url
    mail(to: @user, subject: "Order Confirmation and Summary")
  end

  def order_receipt(order)
    @order = order
    @url
    mail(to: @order.email, subject: "Order Confirmation: ")
  end

end
