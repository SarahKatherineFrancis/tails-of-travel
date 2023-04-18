Rails.application.routes.draw do
  devise_for :users
  resources :blogs do
    resources :comments, only: [:create, :destroy]
  end

  resources :trips
  root to: "blogs#index"
end
