class ArtistsController < ApplicationController

    def show
        id = params[:id]
        @artist = Artist.find(id)
        render 'show'
    end
end
