Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the pages path route ("/")
  get 'about', to: 'pages#about'
  get 'waitlist', to: 'pages#waitlist'
  get 'offers', to: 'pages#offers'

  # Defines the root path route ("/")
  root "main#index"
end
