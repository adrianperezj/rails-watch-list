Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "lists#index"

  resources :lists, only: [:new, :create, :show] do
    resources :bookmarks, only: [:create]
  end
end
