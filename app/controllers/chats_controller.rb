class ChatsController < ApplicationController
  def index
    @chats =Chat.all
  end

  def new
  end

  def create
    if  params[:content].match(/.*おはよう.*||.*おはよー.*||.*おはよ〜.*||.*おはよ!.*||おはよ/)
      Chat.create(content: params[:content])
      Chat.create(content: "おはようございます")
    elsif params[:content].match(/.*こんにちは.*/)
      Chat.create(content: params[:content])
      Chat.create(content: "こんにちは")
    elsif params[:content].match(/.*こんばんは.*/)
      Chat.create(content: params[:content])
      Chat.create(content: "こんばんは")
    end
    redirect_to root_path
  end
end
