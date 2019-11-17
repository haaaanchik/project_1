Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :categories
  root "articles#index"

end
