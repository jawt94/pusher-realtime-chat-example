class ChatMessagesController < ApplicationController

  def index
    @chat_message = ChatMessage.new
  end

  def create
    @chat_message = ChatMessage.new(params[:chat_message])

    Pusher.trigger('chat', 'new_message', {
      name: @chat_message.name,
      message: @chat_message.message
    })

    respond_to :js
  end
end
