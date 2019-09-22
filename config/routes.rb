Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :reservations
  resources :joincomfoods

  resources :menus

  get '/command_food/:food_id', to: 'commands#new', as: 'command_food'

  get '/reserve_food/:food_id', to: 'reservations#new', as: 'reserve_food'

 get 'restaurants/ourteam', to: 'restaurants#ourteam', as: 'ourteam'
 get 'supr/:id', to: 'commands#supr', as: 'supr'

  resources :foods do
    resources :foodavatar, only: [:create,:show]
  end
  root 'restaurants#index'
  devise_for :clients

  resources :restaurants do
  resources :restoavatar,only: [:create,:show]
  end
  devise_for :gerants, path: 'gerants', controllers: { registrations: "gerants/registrations",sessions: "gerants/sessions" }
  resources :commands



  resources :profiles, only:[:index] do
  	resources :avatars, only: [:create]
  end


  devise_scope :client do
     get '/clients/sign_out'=> 'devise/sessions#destroy'
 end


  	resources :profiles, only:[:index] do
  	resources :avatars, only: [:create]
  end

  post "/note", to: "commands#note", as: "note"
  # get '/coucou', to: "coucou#haha"
  post  '/foods/:menu_id/foodavatar/:food_id', to: 'foods#updateAvatar', as: 'foodavatar'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_scope :client do
    get '/clients/sign_out'=> 'devise/sessions#destroy'
end
 end
