Rails.application.routes.draw do

  devise_for :users
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/home/about' => 'homes#about', as: 'about'

  resources :users

  root to: 'homes#top'
end
