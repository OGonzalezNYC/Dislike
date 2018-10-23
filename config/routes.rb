Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :games, only: [:index, :show, :new, :create]
  resources :players, only: [:index, :new, :create]
  resources :rounds, only: [:index, :show, :new, :create]
  resources :statements, only: [:new, :create]
  root 'games#index'

  post '/games', to: 'games#create', as: '/startgame'
  # get '/round', to: 'rounds#show', as: '/startround'


end
