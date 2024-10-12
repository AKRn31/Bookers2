Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/new'
  
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/edit'
  
  get 'homes/new'
  get 'homes/show'
  get 'homes/edit'
  get 'homes/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
