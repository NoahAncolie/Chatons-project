class PicturesController < ApplicationController
    def create
        @item = User.find(params[:item_id])
        @item.picture.attach(params[:picture])
        redirect_to '/'
    end
end
