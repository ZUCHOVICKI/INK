Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :statics
  resources :poems
  root "static#home"
end
