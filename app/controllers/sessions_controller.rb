class SessionsController < ApplicationController

    def create 
        user = User.find_by(username: params[:username])
        # remember the line below, wherein we set the user_id for the session
        session[:user_id] = user.id
        render json: user, status: :ok
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

   
end
