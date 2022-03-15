module CartsHelper
    def current_cart
        @current_cart = []
        Order.all.each do |order|
            if order.customer_id == current_user.id && !order.achived
                @current_cart << order
            end
        end
    end
end
