class SongsController < ApplicationController
    def index
        songs = Song.all 
        render json: songs, include: [:auditions]
    end

    def create
        song = Song.create(song_params)
        render json: song
    end


    private

    def song_params
        params.permit(:user_id, :title, :composer, :lyricist, :performed_by, :style)
    end
end
