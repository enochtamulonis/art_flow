Rails.application.routes.draw do
  devise_for :users
  resources :order_items
  get 'cart/show'
  resources :paintings
  root 'pages#home'
  get '/about', to: "pages#about"
  get '/contact', to: "pages#contact"
  get 'pages/admin'
  post "/new_site_details", to: "pages#submit_admin_form"
  patch "/new_site_details", to: "pages#update_admin_form"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
