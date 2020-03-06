Rails.application.routes.draw do
  
  root to: 'home#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  
  delete 'logout', to: 'sessions#destroy'

  resources :categories
  resources :users
  resources :articles
  post 'signup', to: 'users#create'
  get 'signup', to: 'users#new'
  
  
end
