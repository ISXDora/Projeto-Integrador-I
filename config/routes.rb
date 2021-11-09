Rails.application.routes.draw do
  resources :casts
  resources :locations
  resources :clients
  resources :actors
  resources :films
  resources :ribbons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
