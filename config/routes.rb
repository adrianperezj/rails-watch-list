Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "lists#index"

  resources :lists, only: [:new, :create, :show] do
    resources :bookmarks, only: [:create]
  end




    # get 'lists', to: 'lists#index'
    # get 'lists/new', to: 'lists#new', as: :new
    # get 'lists/:id', to: 'lists#show', as: :list

    # post 'lists', to: 'lists#create'

    # get 'lists/:id/bookmarks', to: 'bookmarks#index'
    # # get 'lists/:id/bookmarks/new', to: 'bookmarks#new'
    # post 'lists/:id/bookmarks', to: 'bookmarks#create'
end
