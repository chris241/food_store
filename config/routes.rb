Rails.application.routes.draw do
  get 'reservations/show'
  get 'reservations/create'
  get 'reservations/new'
  get 'reservations/update'
  get 'reservations/destroy'
  root 'pages#profile'
  devise_for :clients
  resources :reservations
  devise_scope :client do
     get '/clients/sign_out'=> 'devise/sessions#destroy'
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
