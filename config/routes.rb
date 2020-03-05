Rails.application.routes.draw do
  resources :categories
  root to: 'articles#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  
  delete 'logout', to: 'sessions#destroy'

  resources :users
  resources :articles
  post 'signup', to: 'users#create'
  get 'signup', to: 'users#new'
  
  
end
