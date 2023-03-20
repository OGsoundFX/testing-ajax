Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "flats#index"
  resources :flats, only: :index
  get "bookmark", to: "flats#bookmark"
end
