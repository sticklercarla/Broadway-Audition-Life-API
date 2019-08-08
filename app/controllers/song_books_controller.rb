class SongBooksController < ApplicationController
    
    def index
        song_books = SongBook.all
        render json: song_books, include: [:songs, :styles]
    end

end
