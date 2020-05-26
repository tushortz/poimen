Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :shepherds


    root to: "users#index"
  end
  root to: "admin/users#index"
  resources :users
  resources :shepherds

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
