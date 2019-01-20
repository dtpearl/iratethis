Rails.application.routes.draw do

  resources :posts
  resources :comments

  post '/comments' => 'comments#create', :as => 'create_comment'
end
