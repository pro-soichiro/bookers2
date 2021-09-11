Rails.application.routes.draw do
  get 'homes/top'
  devise_for :users
  root to:'homes#top'
  resources :books
  resources :users,only: [:index,:show]
end
