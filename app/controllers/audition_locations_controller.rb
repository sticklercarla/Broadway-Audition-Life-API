class AuditionLocationsController < ApplicationController

    def index
        audition_locations = AuditionLocation.all 
        render json: audition_locations, include: [:auditions]
    end

end
