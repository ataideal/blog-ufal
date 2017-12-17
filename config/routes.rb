Rails.application.routes.draw do
  namespace :masonry do
    get 'home/index'
    resources :categories, only: [:show]
  end

  namespace :site do
    get 'home/index'
    resources :categories, only: [:show]
  end

  namespace :admin do
    resources :users
    resources :publications
    resources :tags
    resources :categories
    root to: "users#index"
  end

  root to: 'site/home#index'
  devise_for :users
  resources :users
  resources :pub_detail, only: [:show]
end
