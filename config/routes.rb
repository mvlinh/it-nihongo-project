Rails.application.routes.draw do
  resources :homelikes
  resources :home_reviews
  get 'users/show'
  resources :homes
  root 'static_pages#home'
  get 'static_pages/home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
