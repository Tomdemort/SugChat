Rails.application.routes.draw do
  devise_for :users

  root 'chat_rooms#index'
  resources :users
  resources :chat_rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
