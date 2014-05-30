Rails.application.routes.draw do
  root 'chat_messages#index'

  post '/pusher/auth', to: 'pusher_sessions#create'

  resources :chat_messages, only: [:create]
end
