module CartsHelper
    def current_cart
        @current_cart = []
        @cart_items = CartItem.all
        @cart_items.each do |item|
            if item.user_id == current_user.id
                @current_cart << item
            end
        end
    end

    def cart_total
        @price = 0
        current_cart.each do |cart_item|
            @price += Item.find(cart_item.item_id).price
        end
        return @price
    end
end