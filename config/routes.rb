Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  resources :users, only: [:index, :show] 
  get 'users/index'
  get 'users/show'
  root 'static_pages#home'
  get '/help', to:'static_pages#help'

  resources :posts, only: [:create, :destroy]
end
