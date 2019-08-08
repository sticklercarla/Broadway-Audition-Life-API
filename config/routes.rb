Rails.application.routes.draw do
  resources :song_books
  resources :auditions
  resources :audition_locations
  resources :casting_offices
  resources :users
  resources :songs
  resources :styles
  post '/login', to: 'auth#create'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  patch '/profile', to: 'users#update'
  delete '/profile', to: 'users#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
