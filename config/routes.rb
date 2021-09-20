Rails.application.routes.draw do
  get 'home/top'
  devise_for :users

  root to:'homes#top'
  get 'home/about' => 'homes#about'
  resources :books,only: [:create,:show,:index,:destroy,:edit,:new,:update]
  resources :users,only: [:show,:edit,:update,:index,:destroy]
end
