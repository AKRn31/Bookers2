Rails.application.routes.draw do
  root to:'homes#top'
  devise_for :users
  
  resources :homes, only:[:index, :show, :new, :create, :edit, :update, :destroy]
  
  resources :users, only:[:index, :show]
  resources :books, only:[:index, :show]


  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
