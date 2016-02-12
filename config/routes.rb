Rails.application.routes.draw do

  get 'sessions/new'

# Are lines 6-32 redundant with lines 43-44?
  # namespace :admin do
  # post 'items/create'
  # end

  # namespace :admin do
  # get 'items/update'
  # end

  # namespace :admin do
  # get 'items/destroy'
  # end

  # namespace :admin do
  # get 'items/edit'
  # end

  # namespace :admin do
  # get 'items/new'
  # end

  # namespace :admin do
  # get 'items/show'
  # end

  # namespace :admin do
  # get 'items/index'
  # end

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :categories, :only => [:show, :index]

  # resources :sessions
  resources :users
  resources :items, :only => [:show, :index]
  namespace :admin do
    resources :items
  end
  root 'items#index'
end
