Rails.application.routes.draw do
  devise_for :users

  root to: "props#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'search_props', to: 'props#search'
  get 'my_bookings', to: 'bookings#index'
  get 'my_props', to: 'props#my_index'
  resources :props do
    resources :bookings, only: %i[create new destroy]
  end
end
