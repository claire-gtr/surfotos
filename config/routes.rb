Rails.application.routes.draw do
  devise_for :users
  root to: 'shots#index'
  resources :shots, only: [:show, :new, :create]
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  get "me" => "users#me"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
