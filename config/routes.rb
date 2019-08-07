Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      get '/account', to: 'users#account'
      patch '/account', to: 'users#edit'
      post '/login', to: 'auth#create'
    end
  end
end
