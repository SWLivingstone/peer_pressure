Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
    resources :lists
  end

  resources :lists do
    resources :list_items
  end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
