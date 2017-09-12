Rails.application.routes.draw do

  root to: 'application#home'

  get '/about', to: 'users#show', as: 'user'
  get '/users/:username/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:username', to: 'users#update', as: 'update_user'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/collections', to: 'collections#index', as: 'collections'
  get '/collections/new', to: 'collections#new', as: 'new_collection'
  post '/collections', to: 'collections#create'
  get '/collections/:collection_id', to: 'collections#show', as: 'collection'
  get '/collections/:collection_id/edit', to: 'collections#edit', as: 'edit_collection'
  patch '/collections/:collection_id', to: 'collections#update', as: 'update_collection'
  delete '/collections/:collection_id', to: 'collections#destroy'

end
