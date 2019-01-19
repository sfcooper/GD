Rails.application.routes.draw do

  resources :distilleries
  devise_for :users
  devise_for :admins
  root 'home#index'
  
  resources :gins
  resources :botanicals
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
