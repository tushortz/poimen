Rails.application.routes.draw do
  namespace :admin do
    resources :attendances
    resources :events
    resources :shepherds
    resources :statuses
    resources :users
    resources :viewed_froms


    root to: "users#index"
  end
  root to: "admin/users#index"
  resources :users
  resources :shepherds

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
