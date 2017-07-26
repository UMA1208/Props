Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  resources :products do
    collection do
      get 'mcbattle'
      get 'economics'
    end
    resources :comments, only: [:create]

  end
  root 'products#index'

end
