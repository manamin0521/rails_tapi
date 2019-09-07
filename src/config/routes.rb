Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts
  root to: 'shops#index'
  resources :shops
  resources :user_shops
end
