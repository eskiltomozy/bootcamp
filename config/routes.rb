Rails.application.routes.draw do
  root 'idioms#index'
  resources :idioms
  get 'learn', to: 'idioms#learn'
end