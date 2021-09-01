class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.new(chatrooms_params)
    @chatroom.driver = params[:chatroom][:driver].to_i
    @chatroom.sender = params[:chatroom][:sender].to_i
    if @chatroom
      redirect_to chatroom_path(@chatroom)
    else
      @chatroom.save
    end
  end

  def find_chatroom
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name, :driver, :sender)
  end
end
