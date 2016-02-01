Rails.application.routes.draw do

  root 'pages#signup'

  get 'pages/login'

  get 'pages/signup'

  get 'pages/checkin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
