Rails.application.routes.draw do

  root to: 'application#home'

  get '/about', to: 'users#show', as: 'user'
  get '/users/:username/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:username', to: 'users#update', as: 'update_user'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :collections

end
