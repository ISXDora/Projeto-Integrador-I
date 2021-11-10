Rails.application.routes.draw do
  resources :casts
  resources :actors
  resources :ribbons
  resources :films
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
