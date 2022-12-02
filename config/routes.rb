Rails.application.routes.draw do
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  root 'eshop#index'
  get 'eshop/login'
  get 'eshop/blog_single'
  get 'eshop/blog'
  get 'eshop/cart'
  get 'eshop/checkout'
  get 'eshop/contact_us'
  get 'eshop/error404'
  # get 'eshop/product_details'
  get 'eshop/product_details/:id', to: 'eshop#product_details', as: 'product_details'
  get 'eshop/shop'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
