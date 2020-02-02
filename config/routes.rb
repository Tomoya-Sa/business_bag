Rails.application.routes.draw do
  
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:index, :show, :new, :create]
  
  resources :products
  
  resources :reviews, only: [:new, :create, :destroy]
  
  resources :favorites, only: [:create, :destroy]
  
  resources :contacts, only: [:new, :create]
  
end
