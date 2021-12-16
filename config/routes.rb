Rails.application.routes.draw do
  get 'chat_rooms/show'
  get 'material_storages/index'
  get 'material_storages/new'
  get 'requests/num'
  root 'top#index'

  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :user
  get "user/self_requests/:user_id" => "user#self_requests"
  get "user/self_material_storages/:user_id" => "user#self_material_storages"
  get "user/self_order/:user_id" => "user#self_orders"
  resources :material_storages
  resources :requests
  resources :requests_details

  get 'pages/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
