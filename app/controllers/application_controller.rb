class ApplicationController < ActionController::API
   before_action :authorize!
    
    def current_user
        ## get the current user model for the logged in user or nil
        token = request.headers['Access-Token']
        return nil unless token.present?
        # byebug
        payload = JWT.decode(token, ENV['SECRET']).first
        ## decode returns an array for somereason. All we want is the payload
        User.find(payload['userId'])
    end

    def authorize!
            ##render back an error if there is no one logged in
        unless current_user
            render json: {error: 'You must be logged in to do that.'}, status: :unauthorized
        end
    end

end
