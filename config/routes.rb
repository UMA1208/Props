Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  resources :picks do
  end
  resources :products do
    resources :comments, only: [:create]
  end
  root 'products#index'

end
