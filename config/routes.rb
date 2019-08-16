Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      get '/account', to: 'users#account'
      patch '/account', to: 'users#update'
      delete '/account', to: 'users#delete'
      post '/login', to: 'auth#create'
      get '/avatars', to: 'avatars#index'
      get '/locations', to: 'locations#index'
      get '/trails-by-location', to: 'trails#location_search'
      get '/trails-by-ids', to: 'trails#ids_search'
      get '/likes', to: 'likes#index'
      post '/likes', to: 'likes#create'
      delete '/likes', to: 'likes#delete'
      get '/completed-hikes', to: 'completed_hikes#index'
      post '/completed-hikes', to: 'completed_hikes#create'
      delete '/completed-hikes', to: 'completed_hikes#delete'
      get '/comments', to: 'comments#index'
      post '/comments', to: 'comments#create'
      patch '/comments', to: 'comments#update'
      delete '/comments', to: 'comments#delete'
    end
  end
end 