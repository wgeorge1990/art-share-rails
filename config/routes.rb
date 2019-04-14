Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :photos
  resources :auth, only: [:create]
  resources :users
  resources :favorites
  resources :comments
  post '/login', to: 'auth#create'
  post '/fetchcomments', to: 'comments#retrievecomments'
  post '/retrieveUsername', to: 'comments#retrieveUsername'
      # get '/profile', to: 'users#profile'
end

