Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      get '/account', to: 'users#account'
      patch '/account', to: 'users#edit'
      post '/login', to: 'auth#create'
      get '/locations', to: 'locations#index'
      get '/trails-by-location', to: 'trails#location_search'
      post '/likes', to: 'likes#create'
      delete '/likes', to: 'likes#delete'
      post '/completed-hikes', to: 'completed_hikes#create'
      delete '/completed-hikes', to: 'completed_hikes#delete'
    end
  end
end 