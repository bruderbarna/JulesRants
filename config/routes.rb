Rails.application.routes.draw do
  devise_for :users, :skip => [:registration, :password]
  root 'posts#index'
  resources :posts
  get '/unpublished_posts' => 'posts#unpublished_posts'
end
