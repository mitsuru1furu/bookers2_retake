Rails.application.routes.draw do
  root "books#index"
  devise_for :users
  resources :books, only:[:index, :show, :new,:edit,:create,:destroy]
  resources :users, only:[:index, :show, :edit,:update]
end
