Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create] do
        resources :trips, only: [:index, :show, :create] do
          resources :attractions, only: [:index, :create]
        end
      end
      get '/states', to: 'states#index'
      post '/login', to: 'auth#create'
      get '/autologin', to: 'auth#autologin'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
