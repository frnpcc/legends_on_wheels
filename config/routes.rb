Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :historical_figures, only: [:index, :show] do
    resources :races, only: [:new, :create]
  end
  resources :races, only: [:index, :show]

  get "/win", to: "races#win", as: :win
  get "/loose", to: "races#loose", as: :loose
end
