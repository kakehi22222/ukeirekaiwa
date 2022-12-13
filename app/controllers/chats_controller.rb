class ChatsController < ApplicationController
  def index
    @chats =Chat.all
  end

  def new
  end

  def create
    Chat.create(content: params[:content])
  end
end
