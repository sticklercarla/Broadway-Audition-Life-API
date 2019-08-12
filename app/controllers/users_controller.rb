class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users, include: [:auditions, :songs, :casting_offices, :audition_locations, :styles]
    end
    
    def create
        user = User.create(user_params)
        if user.valid?
            render json: { token: encode_token(user) }
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        unless current_user.update(user_params)
            render json: { errors: current_user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        current_user.destroy
    end

    def profile
        render json: current_user
    end

    private

    def user_params
        params.permit(:username, :name, :password, :password_confirmation, :profile_pic)
    end


end
