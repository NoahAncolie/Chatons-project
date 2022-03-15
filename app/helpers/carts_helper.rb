module CartsHelper
    def current_cart
        @current_cart = []
        @orders = Order.all
        @orders.each do |order|
            if order.customer_id == current_user.id && !order.achieved
                @current_cart << Order.find(order.id)
            end
        end
    end
end
