class ItemsController < ApplicationController
    def index 
        if params[:user_id]
            user = User.find(params[:user_id])
            items = user.items
          else
            items = Items.all
          end
          render json: items
    end

    def show
        if params[:user_id]
            user = User.find(params[:user_id])
            items = user.items.find(params[:id])
          else
            items = Items.all
          end
          render json: items
    end

    def post
        items = Item.create!(item_params)
        render json: items

    end

    private

    def item_params
      params.require(:post).permit(:name, :description, :price)
    end

end
