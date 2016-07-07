Rails.application.routes.draw do
  resource :pages
  root 'pages#index'

  get 'menu' => 'pages#menu'

  get 'contact_us' => 'pages#contact_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
