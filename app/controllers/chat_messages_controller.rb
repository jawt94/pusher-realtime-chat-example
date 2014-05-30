class ChatMessagesController < ApplicationController

  def index
    @chat_message = ChatMessage.new
  end

  def create
    @chat_message = ChatMessage.new(params[:chat_message])

    Pusher.trigger('private-chat', 'new_message', {
      name: @chat_message.name,
      message: @chat_message.message
    }, {
      socket_id: params[:socket_id]
    })

    respond_to :js
  end
end
