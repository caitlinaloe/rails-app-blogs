Rails.application.routes.draw do
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get '/blogs' => 'blogs#index'
get '/users' => 'users#show'


=======
  root to: 'blogs#index'

  resources :blogs
  resources :users
>>>>>>> fad222b49a6ba6461a79ef4ca5b3da26c5e3d644
end
