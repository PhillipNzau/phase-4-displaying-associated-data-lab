Rails.application.routes.draw do

  resources :users, only: [:show] do
    resources :items, only: [:index, :show, :post]
  end
  resources :items, only: [:index]

end
