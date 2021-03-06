Rails.application.routes.draw do

  get 'children/new', to: 'children#new', as: 'createChild'

  get 'children/create'

  get 'children/destroy'

  get 'children/update'

  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  resource :users do
    get "userDashboard", as: 'dashboard'
  end
  root 'pages#welcome'

  get 'pages/login'

  get 'pages/signup'

  get 'pages/checkin'

  #get 'users/:id/userDashboard', as: 'dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
