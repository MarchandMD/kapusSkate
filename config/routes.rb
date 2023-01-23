Rails.application.routes.draw do
  root 'welcome#index'

  resources :rinks, only: %i[index new create]

  resources :skates do
    resources :skaters, only: %i[index]
  end

  resources :skaters, only: %i[index show new create]

  resources :about, only: %i[index]
  resources :social_media, only: %i[index]

  get "/login", to: "skaters#login_form"
  post "/login", to: "skaters#login"

end
