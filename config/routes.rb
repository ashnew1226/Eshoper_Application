Rails.application.routes.draw do
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  root 'eshop#index'
  get 'eshop/login'
  get 'eshop/blog_single'
  get 'eshop/blog'
  get 'eshop/cart'
  post 'eshop/cart', to: 'eshop#cart', as: 'coupons'
  # patch 'eshop/cart', to: 'eshop#cart', as: 'coupons'
  get 'eshop/checkout'
  get 'eshop/contact_us'
  get 'eshop/error404'
  # get 'eshop/shopping_cart'
  get 'eshop/product_details/:id', to: 'eshop#product_details', as: 'product_details'
  get 'eshop/shop'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "eshop/add_to_cart/:id", to: "eshop#add_to_cart", as: "add_to_cart"
  delete "eshop/remove_from_cart/:id", to: "eshop#remove_from_cart", as: "remove_from_cart"
  delete "eshop/remove_from_cart1/:id", to: "eshop#remove_from_cart1", as: "remove_from_cart1"
  # Defines the root path route ("/")
  # root "articles#index"
  post "eshop/increase_quantity/:id", to: "eshop#increase_quantity", as: "increase_quantity"
  post "eshop/decrease_quantity/:id", to: "eshop#decrease_quantity", as: "decrease_quantity"


end
