Rails.application.routes.draw do
  devise_for :users

  resources :users do
    member do
     get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]

  resources :products do
    collection do
      get 'mcbattle'
      get 'economics'
      get 'love'
      get 'peace'
      get 'live'
      get 'friend'
      get 'battle'
    end
    resources :comments, only: [:create]

  end
  root 'products#index'

end
