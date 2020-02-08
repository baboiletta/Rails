class OrderMailer < ApplicationMailer
    def new_order_email(order)
        p "new_order_email"
        p order
        @order_1 = order
        mail to: order.email, subject: "You got a new order!"
    end
end
