Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :photos



  root 'photos#index'
  get "/about/:about" => "about#show"
  get "/contact/:contact" => "contact#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
