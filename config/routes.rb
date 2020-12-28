Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: :show
  get '/users/sign_up', to: 'registrations#new'
  get '/users/sign_in', to: 'sessions#new'
  get '/users/sign_out', to: 'sessions#destroy'
end
