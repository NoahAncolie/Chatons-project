class CartsController < ApplicationController
  include CartsHelper
  before_action :load_cart
  def index
  end

  def create
  end

  def new
  end

  def update
  end

  def show
    respond_to do |format|
      format.html { redirect_to '/' }
      format.js { }
    end
  end

  private

  def load_cart
    session[:cart] = current_cart
  end
end
