class SongsController < ApplicationController

    def index
        @songs = Song.all
        render "index"
    end

    def show
        id = params[:id]
        @song = Song.find(id)
        # @artist = Artist.find(@song.artist_id)
        # @genre = Genre.find(@song.genre_id)
        render "show"
    end
end
