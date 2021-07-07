Rails.application.routes.draw do
  # resources :sessions, only: [:create]
  # resources :registrations, only: [:create]
  # delete :logout, to: "sessions#logout"
  # get :logged_in, to: "sessions#logged_in"
  namespace :api do 
    namespace :v1 do 
      resources :articles
      resources :article_readings
      resources :reading_lists
      resources :comments
      resources :users
      post '/login', to: 'users#login'
      get '/profile', to: 'users#profile'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
