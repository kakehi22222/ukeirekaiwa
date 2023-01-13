class ChatsController < ApplicationController
  def index
    @chats =Chat.all
  end

  def new
  end

  def create
    if  params[:content].match(/%おはよう%||%こんにちは%||%こんばんは%/)
      Chat.create(content: params[:content])
      Chat.create(content: "おはようございます")
    end
    redirect_to root_path
  end
end
