Rails.application.routes.draw do
  resources :users
  resources :cares
  resources :products
  resources :subscriptions
  resources :addresses
  resources :profiles
  resources :notifications
  resources :feedbacks

end

