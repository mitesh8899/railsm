Rails.application.routes.draw do

  get 'stores/index'  
  resources :products
  resources :stores
  get 'admins', to: 'admins#list',as: :list_admin

  # get 'stores' ,to: 'stores#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
