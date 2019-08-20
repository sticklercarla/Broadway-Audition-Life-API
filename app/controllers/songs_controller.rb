class SongsController < ApplicationController
    def index
        songs = Song.all 
        render json: songs, include: [:auditions]
    end

    def create
        song = Song.create(song_params)
        if song.valid?
            render json: song
        else
            render json: { errors: song.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        song = Song.find(params[:id])
        if song.update(song_params)
            render json: song
        else 
            render json: { errors: song.errors.full_messages }, status: :unprocessable_entity
        end
    end 

    private

    def song_params
        params.permit(:user_id, :title, :composer, :lyricist, :performed_by, :style, :video_key)
    end
end
