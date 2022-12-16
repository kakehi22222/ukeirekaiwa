class ChatsController < ApplicationController
  def index
    @chats =Chat.all
  end

  def new
  end

  def create
    if  Chat.create(content: params[:content])
      Chat.create(content: "こんばんは")
    end
    redirect_to root_path
  end
end
