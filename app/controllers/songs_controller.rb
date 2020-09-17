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

    def new
        @song = Song.new
        render 'new'
    end

    def create
        name = params["song"]["name"]
        artist = Artist.find_or_create_by(name: params["song"]["artist"])
        genre = Genre.find_or_create_by(name: params["song"]["genre"])
        song = Song.create(name: name, artist: artist, genre: genre)
        redirect_to song_path(song)
    end

    def edit

    end

    def update
        
    end
end
