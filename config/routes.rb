Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get '/blogs' => 'blogs#index'
get '/users' => 'users#show'
resources :blogs



end
