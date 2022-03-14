class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(permit_params)
  end

  def destroy
    Item.find(params[:id]).destroy
  end

  def update
    Item.find(params[:id])
  end

  def new
  end

  private

  def permit_params
  
  end
end
