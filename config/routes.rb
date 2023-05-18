Rails.application.routes.draw do
  resources :users
  resources :ratings
  resources :beers
  resources :breweries
  resource :session, only: [:new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "breweries#index"
  get 'sign-up', to: 'users#new'
  get 'sign-in', to: 'sessions#new'
  get 'sign-out', to: 'sessions#destroy'
end
