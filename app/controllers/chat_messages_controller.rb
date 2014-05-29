class ChatMessagesController < ApplicationController

  def index
    @chat_message = ChatMessage.new
  end

  def create
    redirect_to root_url
  end
end
