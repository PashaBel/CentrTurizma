Rails.application.routes.draw do
  get 'tour_report/new'
  get 'tour_report/create'
  get 'tour_report/tour_report'
  get 'authorization/index'
  get 'authorization/logon'
  root 'authorization#index'
  post 'authorization/logon'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
