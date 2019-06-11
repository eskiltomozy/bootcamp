Rails.application.routes.draw do
  root 'idioms#index'
  resources :idioms
end