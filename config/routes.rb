Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get 'pages/directions'

  resources :aritcles do
  resources :comments
end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# if i want to show up default value then we used 
root'users#index'
end
