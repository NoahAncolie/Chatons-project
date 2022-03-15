class CartsController < ApplicationController
  include CartsHelper

  def index
  end

  def create
    
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

  private

end
