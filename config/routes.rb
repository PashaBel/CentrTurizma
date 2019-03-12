Rails.application.routes.draw do
  get 'authorization/index'
  get 'authorization/logon'
  root 'authorization#index'
  post 'authorization/logon'
  get 'home/index'
  get 'user/index'
  resources :users, controller: 'user'
  #get 'user/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
