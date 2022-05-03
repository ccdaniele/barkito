Rails.application.routes.draw do
  resources :user_events
  resources :user_friends
  resources :vendor_followers
  resources :queries
  resources :vendors
  resources :reviews
  resources :reservations
  resources :performers
  resources :menus
  resources :events
  resources :deals
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
