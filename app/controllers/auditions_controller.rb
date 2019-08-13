class AuditionsController < ApplicationController

    def index 
        auditions = Audition.all 
        render json: auditions
    end

    def create
        audition = Audition.create(audition_params)
        render json: audition
    end

    def update
        audition = Audition.find(params[:id])
        if audition.update(audition_params)
            render json: audition
        else
            render json: { errors: audition.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        audition = Audition.find(params[:id])
        audition.destroy
        render json: auditions
    end

    private

    def audition_params
        params.permit(:user_id, :song_id, :casting_office_id, :style, :audition_location_id, :song_length, :musical_title, :appointment, :outfit_img, :date, :time, :sides, :sides_performed, :callback, :booked, :notes)
    end

end
