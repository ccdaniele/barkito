Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
<<<<<<< HEAD
      resources :users, :vendors
      get '/users', to: 'users#index'
      get '/vendors', to: 'vendors#index'
      post '/users', to: 'users#create'
      post '/vendors', to: 'vendors#create'
      patch '/users', to: 'users#update'
      patch '/vendors', to: 'vendors#update'
      
=======
      resources :users, :vendors, :user_vendors
      get '/profile', to: 'users#profile'
      get '/vendors', to: 'vendors#index'
      get '/current_user', to: 'auth#show'
      post '/vendors', to: 'vendors#create'
      post '/login', to: 'auth#create'
      patch '/users', to: 'users#update'
      patch '/vendors', to: 'vendors#update'
>>>>>>> 6d013a78 (next.js migration)
    end
  end
end
