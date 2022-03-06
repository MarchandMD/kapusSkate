Rails.application.routes.draw do
  root 'welcome#index'

  resources :skates
  resources :skaters
end
