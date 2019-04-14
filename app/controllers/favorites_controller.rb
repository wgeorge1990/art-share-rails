class FavoritesController < ApplicationController
    skip_before_action :authorize!, only: [:create, :index]
    def index
        @favorites = Favorite.all
        render json: @favorites
    end

    def create
        @favorite = Favorite.new( user_id: favorite_params['user_id'], photo_id: favorite_params['photo_id'])
        if @favorite.save
            render json: @favorite
        else
           return "Favorite did not save"
        end
    end

    private
    def favorite_params
        params.permit(:photo_id, :user_id)
    end
end