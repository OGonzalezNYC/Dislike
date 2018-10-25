Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :games#, only: [:index, :show, :new, :create, :edit, :update]
  resources :players, only: [:index, :new, :create]
  resources :rounds, only: [:index, :show, :new, :create]
  resources :statements, only: [:new, :create]
  resources :results
  root 'games#index'

  post '/games', to: 'games#create', as: '/startgame'
  get '/endgame' => 'results#endgame', as: :endgame


  # patch '/results', to: 'games#update'
  # get '/round', to: 'rounds#show', as: '/startround'

end
