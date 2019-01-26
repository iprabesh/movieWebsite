Rails.application.routes.draw do
  get 'sessions/new'
  get 'signin' => 'sessions#new'
  get 'signup' => 'users#new'
  resource :session
  resources :users
  root "movies#index"
  resources :movies do 
    resources :reviews
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
