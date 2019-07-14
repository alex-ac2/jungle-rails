class Confirmation < ApplicationMailer
  
  def confirm(order)
    @order = order
    @url
    mail(to: @order.email, subject: "Order Confirmation: ")
  end

end
