Rails.application.routes.draw do
  root 'welcome#index'

  resources :skates
  resources :skaters
  get '/about/index', to: 'about#index', as: 'about'
end
