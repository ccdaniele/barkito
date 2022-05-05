Rails.application.routes.draw do
      resources :users, param: :_username
      get '/users', to: 'users#index'
      get '/vendors', to: 'vendors#index'
      get '/current_user', to: 'auth#show'
      post '/vendors', to: 'vendors#create'
      post '/auth/login', to: 'authentication#login'
      patch '/users', to: 'users#update'
      patch '/vendors', to: 'vendors#update'
      get '/*a', to: 'application#not_found'
end

