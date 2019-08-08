class StylesController < ApplicationController

    def index
        styles = Style.all 
        render json: styles, include: [:auditions, :songs]
    end

end
