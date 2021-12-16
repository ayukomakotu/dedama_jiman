Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  resouces :users, only: [:index, :show] 

  root 'static_pages#home'
  get '/help', to:'static_pages#help'
end
