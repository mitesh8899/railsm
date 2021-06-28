Rails.application.routes.draw do

  resources :products 
  
  get 'stores', to: 'stores#index'
  get 'stores/:id', to: 'stores#add_to_cart',as: :add_to_cart
  get 'stores', to: 'stores#display_cart',as: :display_cart
  get 'stores', to: 'stores#empty_cart', as: :empty_cart
  get 'stores', to: 'stores#checkout', as: :chekout_stores


  get 'admins', to: 'admins#list',as: :list_admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
