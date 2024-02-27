Rails.application.routes.draw do
  get 'races/new'
  get 'races/create'
  get 'races/show'
  get 'races/index'
  devise_for :users
  root to: "pages#home"
  resources :historical_figures, only: [:index, :show] do
    resources :races, only: [:new, :create]
  end
  resources :races, only: [:index, :show]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

end
