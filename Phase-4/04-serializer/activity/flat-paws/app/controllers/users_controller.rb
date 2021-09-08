class UsersController < ApplicationController
    def create 
        user = User.create(user_params)
        render json: user, status: :created 
    end

    def show 
        user = User.find_by(id: session[:user_id])
        if user
        render json: user, status: :accepted
        else 
        render json: {error: "User not found BIYATTTTCHHHHHHHHH"}, status: :unauthorized
        end 
    end
    
    private 
    def user_params 
        params.permit(:user_name, :password)

    end
end
