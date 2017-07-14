Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  devise_for :users
  
  resources :books, only: [:index, :show]
  resources :genres, only: [:index, :show]

  root to: 'pages#index'
end
