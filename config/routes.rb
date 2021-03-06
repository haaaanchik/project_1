Rails.application.routes.draw do
  devise_for :users
  resources :articles do
    resources :comments, module: :articles
    resources :likes, module: :articles
  end
  resources :categories do
    resources :articles, only: [:index, :show], module: :categories
  end
  namespace :users do
    resources :articles
  end
  root "articles#index"

end
