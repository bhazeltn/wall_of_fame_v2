Rails.application.routes.draw do
  resources :skaters
  get 'static_pages/home'

  root to: "static_pages#home"

end
