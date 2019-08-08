class AuditionLocationsController < ApplicationController

    def index
        audition_locations = AuditionLocation.all 
        render json: audition_locations, include: [:auditions]
    end

    def create
        audition_location = AuditionLocation.create(audition_location_params)
        render json: audition_location
    end

    private

    def audition_location_params
        params.permit(:name, :latitude, :longitude)
    end

end
