Rails.application.routes.draw do
  root 'chat_messages#index'

  resources :chat_messages, only: [:create]
end
