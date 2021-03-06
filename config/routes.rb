Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :only => [:create]
      resources :categories, :only => [:index, :show, :create, :update, :destroy]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
