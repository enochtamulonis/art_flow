Rails.application.routes.draw do
  resources :paintings
  devise_for :users
  root 'pages#home'
  get '/about', to: "pages#about"
  get '/contact', to: "pages#contact"
  get 'pages/admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
