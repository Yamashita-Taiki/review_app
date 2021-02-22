Rails.application.routes.draw do
  resources :users
  resources :posts

  get 'rakuten_search' => 'rakuten#search'
  get "about" => "home#about"
  post "bookmarks/:post_id/create" => "bookmarks#create"
  post "bookmarks/:post_id/destroy" => "bookmarks#destroy"
  post "logout" => "users#logout"
  get  "login" => "users#login_page"
  post "login" => "users#login"
  get "signup" => "users#new"
  post "users/create" => "users#create"
  get "users/:id/bookmarks" => "users#bookmarks"
   get "/" => "posts#index"
  post "posts/create" => "posts#create"
end
