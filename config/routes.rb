Rooster::Application.routes.draw do
  get "job/wake_scheduled"

  #semi-static content
  get "about", to: 'info#about'
  get "contact", to: 'info#contact'
  get "license", to: 'info#license'

  #authentication
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  #Target scaffold
  resources :targets

  #Homepage
  root to: 'targets#index'
end
