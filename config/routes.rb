Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "/", to: "home#new"
  get "/about", to: "about#index"
  get "/dear_no_one", to: "dear_no_one#new"
  post '/dear_no_one', to: 'dear_no_one#create'
  resources :blogs
end