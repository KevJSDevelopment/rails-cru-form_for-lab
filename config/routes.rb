Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/songs" , to: 'songs#index'
  get "/songs/new", to: 'songs#new'
  post "/songs", to: 'songs#create'

  get "/genres/:id", to: 'genres#show', as: 'genre'
  get "/artists/:id", to: 'artists#show', as: 'artist'
  get "/songs/:id", to: 'songs#show', as: 'song'

end
