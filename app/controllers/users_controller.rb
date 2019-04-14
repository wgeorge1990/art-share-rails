class UsersController < ApplicationController
before_action :authorize!, only: [:index]
    
    def index
    @users = User.all
    render json: @users
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            # @token = encode_token(user_id: @user.id)
           @token = JWT.encode({userId: @user.id}, ENV['SECRET'])
            render json: {user: @user, jwt: @token}, status: :created
        else
            render json: { error: 'failed to create user'}, status: :not_acceptable
        end
    end

    private
    def user_params
        params.permit(:username, :password, :bio, :avatar, :email, :firstname, :lastname)
    end
end
