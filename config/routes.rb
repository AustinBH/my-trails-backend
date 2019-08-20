Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      #Auth Routes
      get '/account', to: 'users#account'
      patch '/account', to: 'users#update'
      delete '/account', to: 'users#delete'
      post '/login', to: 'auth#create'
      #Avatar Routes
      get '/avatars', to: 'avatars#index'
      get '/locations', to: 'locations#index'
      #Trail Routes
      get '/trails-by-location', to: 'trails#location_search'
      get '/trails-by-ids', to: 'trails#ids_search'
      #Like Routes
      get '/likes', to: 'likes#index'
      post '/likes', to: 'likes#create'
      delete '/likes', to: 'likes#delete'
      #Completed Hike Routes
      get '/completed-hikes', to: 'completed_hikes#index'
      post '/completed-hikes', to: 'completed_hikes#create'
      delete '/completed-hikes', to: 'completed_hikes#delete'
      #Comment Routes
      get '/comments', to: 'comments#index'
      post '/comments', to: 'comments#create'
      patch '/comments', to: 'comments#update'
      delete '/comments', to: 'comments#delete'
      #Image Routes
      get '/images', to: 'images#index'
      post '/images', to: 'images#create'
      delete '/images', to: 'images#delete'
    end
  end
end 