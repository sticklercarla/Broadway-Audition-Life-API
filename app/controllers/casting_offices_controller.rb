class CastingOfficesController < ApplicationController
    
    def index
        casting_offices = CastingOffice.all 
        render json: casting_offices, include: [:auditions]
    end

end
