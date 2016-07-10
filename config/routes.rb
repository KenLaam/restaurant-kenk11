Rails.application.routes.draw do
  resources :food_items, :orders

  root 'pages#index'

  get 'menu' => 'pages#menu'

  get 'contact_us' => 'pages#contact_us'

  get 'admin' => 'pages#admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
