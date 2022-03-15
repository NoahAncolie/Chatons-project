class CartsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def destroy
  end

  def create
    unless (user_has_cart)
      @cart = Cart.new(user_id: current_user.id, total_price: 0, nb_of_items: 0)
      if @cart.save
        respond_to do |format|
          format.html { redirect_to cart_path(@cart.id) }
          format.js { }
        end
      end
    else
      @cart = Cart.find_by(user_id: current_user.id)
      respond_to do |format|
        format.html { redirect_to cart_path(@cart.id) }
        format.js { }
      end
    end
  end

  def new
  end

  def show
  end

  def update
  end
end
