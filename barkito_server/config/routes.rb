Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :vendors
      get '/users', to: 'users#index'
      get '/vendors', to: 'vendors#index'
      post '/users', to: 'users#create'
      post '/vendors', to: 'vendors#create'
      patch '/users', to: 'users#update'
      patch '/vendors', to: 'vendors#update'
      
    end
  end
end
