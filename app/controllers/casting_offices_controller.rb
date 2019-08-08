class CastingOfficesController < ApplicationController
    
    def index
        casting_offices = CastingOffice.all 
        render json: casting_offices, include: [:auditions]
    end

    def create
        casting_office = CastingOffice.create(casting_office_params)
        render json: casting_office
    end

    private

    def casting_office_params
        params.permit(:name)
    end

end
