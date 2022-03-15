class OrdersController < ApplicationController
  def index
  end

  def destroy
  end

  def create
    puts "="*60
    puts params
    puts "="*60
    respond_to do |format|
      format.html { redirect_to '/' }
    end
  end

  def show
  end

  def update
  end

  def new
  end
end
