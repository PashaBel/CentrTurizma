Rails.application.routes.draw do
  root 'authorization#index'
  get 'authorization/index'
  get 'authorization/logon'
  post 'authorization/logon'
  get 'home/index'
  get 'users/index'
  resources :users
  #get 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
