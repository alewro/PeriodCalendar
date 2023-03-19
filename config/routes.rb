Rails.application.routes.draw do
  resources :more_days
  resources :one_days
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "calendar#index"
  get 'show', to: 'calendar#show'
end
