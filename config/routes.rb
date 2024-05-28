Rails.application.routes.draw do
  devise_for :users
  root to: "props#home"

  get 'search_props', to: 'props#search'

  resources :props, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:create, :destroy]
  end
end
