Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :chess_soldiers
  resources :inventories
  root 'game#play'

  match '*path', to: 'application#routing_error', via: :all
end
