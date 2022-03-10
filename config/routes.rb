Rails.application.routes.draw do
  resources :membership, only: [:create]
  resources :gym, only: [:show, :destroy]
  resources :client, only: [:show]
end
