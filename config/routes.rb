Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'lists#index'
  resources :lists, only: [:index, :show, :new, :create] #do
  #   resources :bookmarks, only: [:new, :create]
  # end
  resources :bookmarks, only: [:destroy]
  get "/lists/:list_id", to: "bookmarks#new", as: "new_list_bookmark"
  post "/lists/:list_id/bookmarks", to: "bookmarks#create", as: "list_bookmarks"
end
