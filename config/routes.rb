Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :projects

  resources :characters

  resources :worlds

  resources :notes

  resources :beta_readers

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
