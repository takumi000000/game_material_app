class ChatRoomsController < ApplicationController
  def show
    @chat_messages = ChatMessage.all
  end
end
