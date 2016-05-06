Rails.application.routes.draw do
  resources :messages, only: [:index]
  resources :sessions, only: [:new, :create]

  mount ActionCable.server => '/cable'

  root 'site#index'
end
