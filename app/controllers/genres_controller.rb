class GenresController < ApplicationController
    
    def show
        id = params[:id]
        @genre = Genre.find(id)
        render 'show'
    end
end
