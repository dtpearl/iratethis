Rails.application.routes.draw do


  root :to => 'pages#index'
  resources :posts
  resources :comments
  resources :users

  delete 'posts/:id' => 'posts#destroy', :as => 'delete_post'
  post 'posts/:id/comments' => 'posts#create_comment', :as => 'create_comment'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
