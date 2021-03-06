class AdminMailer < ApplicationMailer

    default from: 'catshop@yopmail.com'

    def order_email(order)
      @order = order
      @cart = @order.user.cart
      @user = @order.user
  
      @admin = User.find_by(is_admin: true)
  
      @url  = 'https://cats-shop-thp.herokuapp.com/'
  
      mail(to: @admin.email, subject: 'Un nouvel achat a été effectué')
    end
  

end
