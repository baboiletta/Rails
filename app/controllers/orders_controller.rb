class OrdersController < ApplicationController
    
        def new
          @order = Order.new
        end
      
        def create
          @order = Order.new(order_params)
          if @order.save
            OrderMailer.new_order_email(@order).deliver_now

            flash[:success] = "Successed"
            redirect_to root_path
          else
            flash.now[:error] = "Failed"
            render :new
          end
        end
      
        private
        def order_params
          params.permit(:name, :email, :messages, :phone, :content)
          
        end
    
      
  
end
  