Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show] do
    resources :comments, only: [:create, :destroy]
  end
  
  resource :session, only: [:new, :create, :destroy]
    
  resources :goals do
    resources :comments, only: [:create, :destroy]
  end
  
  root to: 'users#new'
end
