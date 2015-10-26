Rails.application.routes.draw do

  root 'welcomes#index'

  get 'welcomes/about' => 'welcomes#about'

  post 'sessions/new' => "sessions#new"

  post 'session' => "sessions#create"

  get 'sessions/destroy' => "sessions#destroy"

  get 'dashboard' => "dashboards#index"
  
  resources 'users'

  get "products/admin" => "products#admin"

  resources 'products'

  resources 'subscriptions'


  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
end
