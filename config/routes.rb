Rails.application.routes.draw do
  get 'homes/top'
  devise_for :users

  root to:'homes#top'
  get 'homes/about' => 'homes#about'
  resources :books,only: [:create,:show,:index,:destroy,:edit,:new,:update]
  resources :users,only: [:show,:edit,:update,:index,:destroy]
end
