Rails.application.routes.draw do
  root 'pages#home'
  get '/home', to:'pages#home'
  
  #get '/paws', to: 'paw#index'
  #get '/paws/new', to: 'paws#new', as: 'new_paw'
  #post '/paws', to: 'paws#create'
  #get '/paws/:id/edit', to: 'paws#edit', as: 'edit_paw'
  #patch '/paws/:id', to: 'paws#update'
  #get 'paws/:id', to: 'paws#show', as: 'paw'
  #delete '/paws/:id', to: 'paws#destroy'
  
  resources :paws
end
