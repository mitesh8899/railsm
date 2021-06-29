Rails.application.routes.draw do
  resources :products 
  # get 'stores', to: 'stores#show'
  get 'stores', to: 'stores#index'
  get 'stores/:id', to: 'stores#add_to_cart',as: :add_cart
  get 'stores', to: 'stores#display_cart',as: :display_cart
  get 'stores/empty_cart', to: 'stores#empty_cart', as: :empty_cart
  get 'stores/checkout', to: 'stroes#checkout', as: :checkout

  # resources :admins
  get 'admins', to: 'admins#list',as: :list_admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
