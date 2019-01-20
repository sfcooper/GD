Rails.application.routes.draw do


  root 'home#index'
  
  resources :gins
  resources :botanicals
  resources :blogs
  resources :distilleries
  devise_for :users
  devise_for :admins

end
