module CartsHelper
    def current_cart
        @current_cart = []
        Order.all.each do |order|
            if order.customer_id == 
    end
end
