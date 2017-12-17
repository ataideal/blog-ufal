Rails.application.routes.draw do
  namespace :site do
    get 'home/index'
    resources :pub_detail, only: [:show]
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
end
