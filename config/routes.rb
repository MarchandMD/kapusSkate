Rails.application.routes.draw do
  root 'welcome#index'
  get '/rinks', to: 'rinks#index'
  get '/rinks/new', to: 'rinks#new'
  post '/rinks', to: 'rinks#create'
  resources :skates
  resources :skaters
  get '/about/index', to: 'about#index', as: 'about'
  get '/social_media/index', to: 'social_media#index'
end
