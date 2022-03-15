module CartsHelper
    def user_has_cart
        @carts = Cart.all
        @carts.each do |cart|
            if cart.user_id == current_user.id
                return true
            end
        end
        return false
    end

    def current_cart.price
end
