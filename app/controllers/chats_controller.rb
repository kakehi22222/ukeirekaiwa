class ChatsController < ApplicationController
  def index
    @chats =Chat.all
  end

  def new
  end

  def create
    if  Chat.new(content: params[:content].include?("こんにちは"))
      Chat.create(content: "こんばんは")
    end
    redirect_to root_path
  end
end
