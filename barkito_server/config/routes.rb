Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :vendors, :user_vendors
      get '/profile', to: 'users#profile'
      get '/vendors', to: 'vendors#index'
      get '/current_user', to: 'auth#show'
      post '/vendors', to: 'vendors#create'
      post '/login', to: 'auth#create'
      patch '/users', to: 'users#update'
      patch '/vendors', to: 'vendors#update'
    end
  end
end
