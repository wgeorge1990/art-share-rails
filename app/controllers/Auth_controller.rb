class AuthController < ApplicationController
    skip_before_action :authorize!

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            token = JWT.encode({userId: @user.id}, ENV['SECRET'])
            render json: {
                token: token, firstname: @user.firstname, lastname: @user.lastname, email: @user.email, bio: @user.bio, id: @user.id, avatar: @user.avatar}, status: :ok
        else
            render json: {error: 'could not log you in'}, status: :unauthorized  
        end 
    end

end
