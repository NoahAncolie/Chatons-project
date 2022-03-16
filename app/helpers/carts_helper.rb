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
end