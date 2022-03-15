class OrdersController < ApplicationController
  def index
  end

  def destroy
  end

  def create
    @order = Order.new(item_id: params[:item_id], customer_id: current_user.id, achieved: false)
    if @order.save
      respond_to do |format|
        format.html { redirect_to '/' }
        format.js { }
      end
    else
      flash.now[:error] = "ERRORRR"
    end
  end

  def show
  end

  def update
  end

  def new
  end
end
