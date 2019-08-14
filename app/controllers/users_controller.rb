class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users, include: [:auditions, :songs, :casting_offices, :audition_locations]
    end
    
    def create
        user = User.create(user_params)
        if user.valid?
            render json: { token: encode_token(user), user: user }, include: [:songs, :auditions]
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json: user
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        user = User.find(params[:id])
        if user.destroy
        else 
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def profile
        render json: current_user, include: [:songs, :auditions]
    end

    private

    def user_params
        params.permit(:username, :name, :password, :password_confirmation, :profile_pic)
    end


end
