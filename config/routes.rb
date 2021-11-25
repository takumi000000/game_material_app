Rails.application.routes.draw do
  get 'material_storages/index'
  get 'material_storages/new'
  get 'requests/num'
  root 'top#index'

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :contractor
  resources :requester
  resources :material_storages
  resources :requests
  resources :requests_details

  get 'pages/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
