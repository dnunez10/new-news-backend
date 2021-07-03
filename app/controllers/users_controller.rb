class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
    end

    def create
        user = User.create(user_params)
        if user.save
            render json: user 
        else
            render json: {error: user.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation)
    end

end
