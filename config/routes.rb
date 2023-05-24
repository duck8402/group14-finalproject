require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :books
  resources :loans
  resources :book_reviews
  resources :ratings
  resources :book_places
  resources :floors
  resources :authors
  resources :genres
  resources :members
  resources :staffs
  resources :departments
  resources :libraries
  resources :managers
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end