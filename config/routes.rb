Rails.application.routes.draw do

  resources :users
  resources :posts

  get 'rakuten_search' => 'rakuten#search'
  get "about" => "home#about"

  # post "bookmarks/:post_id/create" => "bookmarks#create"
  # post "bookmarks/:post_id/destroy" => "bookmarks#destroy"
  # post "logout" => "users#logout"
  # get  "login" => "users#login_page"
  # post "login" => "users#login"

  # post "users/:id/update" => "users#update"
  # post "users/create" => "users#create"
  # get "signup" => "users#new"
  # get "users/index" => "users#index"
  # get "users/:id" => "users#detail"
  # get "users/:id/edit" => "users#edit"
  # get "users/:id/bookmarks" => "users#bookmarks"
  
   get "/" => "posts#index"
#   get "posts/new" => "posts#new"
#   get "posts/:id" => "posts#detail"
#   post "posts/create" => "posts#create"
#   get "posts/:id/edit" => "posts#edit"
#   post "posts/:id/update" => "posts#update"
#  post "posts/:id/destroy" => "posts#destroy"

 
end
