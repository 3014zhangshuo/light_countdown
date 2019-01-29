Rails.application.routes.draw do
  root 'countdowns#index'

  resources :countdowns

  get '/auth/:provider/callback' => 'sessions#create'
  get 'auth/failure', to: redirect('/')
  delete '/logout', to: 'sessions#destroy', as: :logout
end
