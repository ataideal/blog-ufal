Rails.application.routes.draw do
  namespace :site do
    get 'home/index'
    get 'home/show/:id', to: 'home#show', as: 'publication'
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
