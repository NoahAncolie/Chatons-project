class CartsController < ApplicationController
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
  end

  private

  def load_cart
    session[:cart] = current_cart
  end
end
