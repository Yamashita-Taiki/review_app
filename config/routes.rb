Rails.application.routes.draw do
    
  post "users/:id/update" => "users#update"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get 'users/index' => "users#index"
  get 'users/:id' => "users#detail"
  get 'users/:id/edit' => 'users#edit'
  
  root 'home#top'
  
   get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#detail"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post 'posts/:id/update' => 'posts#update'
 post "posts/:id/destroy" => "posts#destroy"
 
end
