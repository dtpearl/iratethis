Rails.application.routes.draw do


  root :to => 'pages#home'
  resources :posts
  resources :comments
  resources :users

  post 'posts/:id/comments' => 'posts#create_comment', :as => 'create_comment'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
