Rails.application.routes.draw do


  root :to => 'users#new'
  resources :posts
  resources :users
  #resources :comments

  # Posts and comments routes
  post 'posts/:id/comments' => 'posts#create_comment', :as => 'create_comment'
  delete 'posts/:id/comments' => 'posts#delete_comment', :as => 'delete_comment'
  delete 'posts/:id' => 'posts#destroy', :as => 'delete_post'

  # Sessions routes
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
