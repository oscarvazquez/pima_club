Rails.application.routes.draw do

  root 'welcomes#index'

  resources :products
  resources :sessions
  resources :subscriptions
  resources :users
 
  # NAV ROUTING
  get 'about' => 'welcomes#about'
  get 'welcomes/about' => 'welcomes#about'

  # SESSIONS
  post 'session' => "sessions#create"
  post 'sessions/new' => "sessions#new"
  get 'sessions/destroy' => "sessions#destroy"

  # DASHBOARD
  get 'dashboard' => "dashboards#index"
  
  # ADMIN
  get 'products/admin' => 'products#admin'
  resources 'users'

  resources 'products'

  resources 'subscriptions'

  resources 'facets'

  resources 'colors'

  resources 'styles'

  resources 'sizes'

  # OAUTH LOGIN
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

end
