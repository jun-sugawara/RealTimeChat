class MessagesController < ApplicationController
  def index
    messages = Message.all
    messages_array = messages.map do |m|
      {
        id: m.id,
        user_id: m.user.id,
        name: m.user.name,
        content: m.content,
        email: m.user.email,
        created_at: m.created_at
      }
    end

    render json: messages_array, status: 200
  end
end
