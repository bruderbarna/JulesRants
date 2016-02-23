Rails.application.routes.draw do
  devise_for :users, :skip => [:registration, :password]
  root 'posts#index'
  resources :posts
end
