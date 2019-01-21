Rails.application.routes.draw do

  root :to => 'posts#index'
  resources :posts
  resources :comments


  post 'posts/:id/comments' => 'posts#create_comment', :as => 'create_comment'
end
