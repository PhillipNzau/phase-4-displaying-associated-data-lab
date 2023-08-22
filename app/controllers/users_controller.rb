class UsersController < ApplicationController
    def show
        users = User.find(params[:id])
        render json: users , include: :items, except: [:created_at, :updated_at]
    end

end
