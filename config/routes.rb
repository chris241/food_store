Rails.application.routes.draw do
  
  get 'avatars/create'
  resources :reservations

  root 'restaurants#index'
  devise_for :clients
  resources :restaurants
  Rails.application.routes.draw do
  	resources :profiles, only:[:index] do
  	resources :avatars, only: [:create]
  end
 end
  devise_scope :client do
     get '/clients/sign_out'=> 'devise/sessions#destroy'
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
