class AuditionsController < ApplicationController

    def index 
        auditions = Audition.all 
        render json: auditions
    end

    def create
        audition = Audition.create(audition_params)
        render json: audition
    end

    private

    def audition_params
        params.permit(:user_id, :song_id, :casting_office_id, :style_id, :audition_location_id, :song_length, :musical_title, :appointment, :outfit_img, :date, :time, :sides, :sides_performed)
    end

end
