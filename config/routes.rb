Rails.application.routes.draw do
  get 'bill/bill'
  root 'static_pages#home'
  get 'bill/add/:id' => 'bill#add_bill'
  resources :bill_items
  # get 'bill_items/show/:id' => "bill_items#show"
  resources :foods
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resolve("ActiveStorage::Variant") { |variant, options| main_app.route_for(:rails_variant, variant, options) }
end
