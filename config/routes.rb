Rails.application.routes.draw do
  
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'
  
  get 'itinerarios/show'

  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
 


  #get 'origens#index'
  get 'restful' => 'origens#restful'
  
  get 'afterSearch' => 'vuelos#show'
  get 'comprar' => 'vuelos#comprar'
  resources :users
  resources :vuelos
  resources :pasajes
  resources :origens
  resources :mediopagos
  resources :itinerarios
  resources :destinos
  resources :avions
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  wash_out :origens
end
