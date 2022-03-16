module ChargesHelper
    def calculate_order_amount
        @amount = 0
        @orders = Order.all
        @orders.each do |order|
            if order.customer_id == current_user.id && !order.achieved
                @amount += Item.find(order.item_id).price
            end
        end
        return @amount
    end
end
