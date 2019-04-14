class CommentsController < ApplicationController
    skip_before_action :authorize!, only: [:create, :index, :retrievecomments, :retrieveUsername]
    def index
        @comments = Comment.all
        render json: @comments
    end

    def create
        @comment = Comment.new( user_id: comment_params['user_id'], photo_id: comment_params['photo_id'], content: comment_params['content'])
        if @comment.save
            render json: @comment
        else
           return "comment did not save"
        end
    end

    def retrievecomments
        @photo = Photo.find_by(id: comment_params['photo_id'])
        @comments = @photo.comments
        # @comments = Comment.all.find_by(photo_id: comment_params['photo_id'])
        render json: @comments
    end

    def retrieveUsername
        @user = User.find_by(id: comment_params['user_id'])
        render json: {username: @user.username}
    end



    private
    def comment_params
        params.permit(:photo_id, :user_id, :content)
    end
end