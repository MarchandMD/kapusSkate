Rails.application.routes.draw do
  root 'skates#index'

  resources :skates
end
