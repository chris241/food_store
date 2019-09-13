Rails.application.routes.draw do

  resources :reservations

  root 'restaurants#index'
  devise_for :clients

  resources :restaurants do
  resources :restoavatar,only: [:create,:show]
  end	
  devise_for :gerants, path: 'gerants', controllers: { registrations: "gerants/registrations",sessions: "gerants/sessions" }
  resources :restaurants
  
  resources :profiles, only:[:index] do
  	resources :avatars, only: [:create]
  end
  resources :food do
  	resources :foodavatar,only: [:create,:show]
  end	
 

  devise_scope :client do
     get '/clients/sign_out'=> 'devise/sessions#destroy'
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
