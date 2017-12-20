Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  namespace :masonry do
    get 'home/index'
    resources :categories, only: [:show]
  end

  namespace :site do
    namespace :profile do
      resources :publications, except: [:destroy, :show]
    end
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
