Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :reservations
  root 'restaurants#index'
  devise_for :clients
  devise_for :gerants, path: 'gerants', controllers: { registrations: "gerants/registrations",sessions: "gerants/sessions" }
  resources :restaurants
  resources :profiles, only:[:index] do
  	resources :avatars, only: [:create]
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
