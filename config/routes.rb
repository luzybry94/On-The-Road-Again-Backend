Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :trips do
        resources :attractions, only: [:index, :create, :update, :destroy]
        resources :todos, only: [:create, :update, :destroy]
      end
      post '/signup', to: 'users#create'
      get '/states', to: 'states#index'
      post '/login', to: 'auth#create'
      get '/autologin', to: 'auth#autologin'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
