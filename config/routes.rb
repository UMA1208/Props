Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  resources :picks do
    resources :products do
      resources :comments, only: [:new, :create]
    end
  end
  root 'products#index'

end
