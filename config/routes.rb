Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  root 'welcome#index'

  resources :rinks, only: %i[index new create]

  resources :skates do
    resources :skaters, only: %i[index]
  end

  resources :skaters, only: %i[index show new create edit]

  resources :about, only: %i[index]
  resources :social_media, only: %i[index]

  resources :users, only: %i[index show]
  get "/login", to: "skaters#login_form"
  post "/login", to: "skaters#login"
  get "/logout", to: "skaters#logout"
  get '/auth/:provider/callback', to: 'sessions#omniauth'

end
