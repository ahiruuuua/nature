Rails.application.routes.draw do
  get 'lectures/index'
  get 'lectures/new'
  devise_for :users
  resources :users, only: [:show]
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html 
  get 'hello/index' => 'hello#index'
  resources :tweets do
  resources :comments, only: [:create]
  end
  # post 'tweets' => 'tweets#create'
  # get 'tweets/:id' => 'tweets#show',as: 'tweet'
  # patch 'tweets/:id' => 'tweets#update'
  # delete 'tweets/:id' => 'tweets#destroy'
  # get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'
  root 'hello#index'
  # get 'lectures/index'  => 'lectures#index'
  # get 'lectures/new'  => 'lectures#new'
  # post 'lectures/new'  => 'lectures#create'

end


