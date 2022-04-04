Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
  get "/index", to: "posts#index", as: "index"
  get "/show/:id", to: "posts#show", as: "show"
  get "/new", to: "posts#new", as: "new"
  post "/new", to:"posts#create", as: "create"
  get "/edit/:id", to: "posts#edit", as: "edit"
  post "/edit/:id", to: "posts#update", as: "update"
  get "/destroy/:id", to: "posts#destroy", as: "destroy"
end
