Rails.application.routes.draw do
  namespace :site do
    get 'home/index'
  end

  namespace :admin do
    resources :users

    root to: "users#index"
  end

  root to: 'site/home#index'
  devise_for :users
  resources :users
end
