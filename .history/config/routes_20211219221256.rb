Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users, controllers: {
      sessions:      'users/sessions',
      passwords:     'users/passwords',
      registrations: 'users/registrations'
    }
  get '/help', to:'static_pages#help'
  get 'users/index'
  get 'users/show'
  resources :users, only: [:index, :show] 
end
