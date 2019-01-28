Rails.application.routes.draw do
  root "movies#index"
  get 'movies/filter/:scope' => "movies#index", as: :filtered_movies

  resources :genres
  get 'sessions/new'
  get 'signin' => 'sessions#new'
  get 'signup' => 'users#new'
  resource :session
  resources :users
  
  resources :movies do 
    resources :reviews
    resources :favorites
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
