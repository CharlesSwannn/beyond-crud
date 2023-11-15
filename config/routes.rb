Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :index, :create]
  end
  resources :reviews, only: [:destroy]
end
