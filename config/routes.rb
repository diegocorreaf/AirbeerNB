Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: %i[new create] do
    resources :products, only: %i[new create edit update]
  end
  resources :products, only: %i[index show destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
