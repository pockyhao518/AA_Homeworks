Rails.application.routes.draw do
  resources :users, only: [:index, :show, :new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :subs
end
