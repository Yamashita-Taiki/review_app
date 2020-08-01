Rails.application.routes.draw do
  root 'home#top'
  get 'posts/create' => 'posts#create'
  get 'posts/index' => 'posts#index'
  get 'posts/:id' => 'posts#detail'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
end
