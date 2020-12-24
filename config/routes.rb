Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  get '/users/sign_up', to: 'registrations#new'
end
