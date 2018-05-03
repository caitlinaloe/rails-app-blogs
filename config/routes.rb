Rails.application.routes.draw do
  root to: 'blogs#index'

  resources :blogs
  resources :users
  resources :comments

  get 'ana_show', to: 'users#show_saenz'
end
