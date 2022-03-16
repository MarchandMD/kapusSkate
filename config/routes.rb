Rails.application.routes.draw do
  root 'welcome#index'

  resources :skates
  resources :skaters
  get '/about/index', to: 'about#index', as: 'about'
  get '/social_media/index', to: 'social_media#index'
end
