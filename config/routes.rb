Rails.application.routes.draw do
  get 'login' => "sessions#new"
  post 'login' => "sessions#create"
  delete 'logout' => "sessions#destroy"
  root to: "sessions#new"
resources :users, :lists
resources :users do
  resources :lists
end
end
