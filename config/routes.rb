Rails.application.routes.draw do


  root :to => 'pages#index'
  resources :posts
  resources :comments
  resources :users

  delete 'posts/:id' => 'posts#destroy', :as => 'delete_post'
  delete 'posts/:id/comments' => 'posts#delete_comment', :as => 'delete_comment'
  post 'posts/:id/comments' => 'posts#create_comment', :as => 'create_comment'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
