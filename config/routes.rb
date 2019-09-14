Rails.application.routes.draw do

  resources :reservations
  resources :menus
  resources :foods do
    resources :foodavatar, only: [:create,:show]
  end

  root 'restaurants#index'
  devise_for :clients
  devise_for :gerants, path: 'gerants', controllers: { registrations: "gerants/registrations",sessions: "gerants/sessions" }
  resources :restaurants
  	resources :profiles, only:[:index] do
  	resources :avatars, only: [:create]
  end

  # get '/coucou', to: "coucou#haha"
  post  '/foods/:menu_id/foodavatar/:food_id', to: 'foods#updateAvatar', as: 'foodavatar'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :client do
    get '/clients/sign_out'=> 'devise/sessions#destroy'
end
 end
