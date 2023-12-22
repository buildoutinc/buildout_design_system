Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount Lookbook::Engine, at: "/lookbook"
  # Defines the root path route ("/")
  # root "articles#index"
end
