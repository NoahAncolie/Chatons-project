class CartsController < ApplicationController
  include CartsHelper
<<<<<<< HEAD
=======
  before_action :authenticate_user
>>>>>>> cats-shop

  def index
  end

  def create
<<<<<<< HEAD
=======
    :authenticate_user
>>>>>>> cats-shop
    @cart_item = CartItem.new(permit_params)
    if @cart_item.save
      redirect_to '/'
    else 
      flash.now[:error] = puts @cart_item.errors.messages
      render 'chat'
    end
  end

  def new
  end

  def update
  end

  def show
    @cart = current_cart
    respond_to do |format|
      format.html { redirect_to '/' }
      format.js { }
    end
  end

<<<<<<< HEAD
  private

  def find_price
    return Item.find(params[:item_id].to_i).price * params[:quantity].to_i
=======
  def destroy
    
  end
  private

  def find_price
    return Item.find(params[:item_id].to_i).price
  end

  def permit_params
    params[:price] = find_price
    params[:user_id] = current_user.id
    params.permit(:item_id, :user_id, :quantity, :price)
  end

  def authenticate_user
    unless (user_signed_in?)
      redirect_to user_session_path
    end
>>>>>>> cats-shop
  end

  def permit_params
    params[:price] = find_price
    params[:user_id] = current_user.id
    params.permit(:item_id, :user_id, :quantity, :price)
  end

end
