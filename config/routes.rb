Rails.application.routes.draw do
  root 'home#top'
   get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#detail"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
end
