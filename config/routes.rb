Rails.application.routes.draw do
  devise_for :users
  
  root to: "props#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'search_props', to: 'props#search'

  resources :props do
    resources :bookings, only: [:create, :destroy]
  end
end
