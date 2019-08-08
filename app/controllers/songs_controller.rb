class SongsController < ApplicationController
    def index
        songs = Song.all 
        render json: songs, include: [:auditions]
    end
end
