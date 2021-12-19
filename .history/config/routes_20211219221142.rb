Rails.application.routes.draw do
  root 'static_pages#home'
  get '/help', to:'static_pages#help'
  
  
  
  devise_for :users, controllers: {
      sessions:      'users/sessions',
      passwords:     'users/passwords',
      registrations: 'users/registrations'
    }
  get 'users/index'
  get 'users/show'
  resources :users, only: [:index, :show] 
end
