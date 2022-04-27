Rails.application.routes.draw do
  resources :reviews
  resources :shoot_locations
  resources :actors
  resources :series

  root "series#index"
  get '/search', to: 'series#search', as: 'search'
end
