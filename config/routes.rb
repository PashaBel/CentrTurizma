Rails.application.routes.draw do
  get 'authorization/index'
  get 'authorization/logon'
  root 'authorization#index'
  post 'authorization/logon'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
