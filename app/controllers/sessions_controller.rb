class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
        render json: @user, except: [:password_digest, :created_at, :updated_at],
        include: [:days], status: :created, location: @user
        else
           render json: @user.errors, status: :unprocessable_entity
        end
    end

    def user_params
        params.require(:user).permit(:username, :password)
      end

end
