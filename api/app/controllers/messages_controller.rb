class MessagesController < ApplicationController
  before_action :authenticate_user!, only: ["index"]

  def index
    messages = Message.includes(:user, [likes: :user])
    messages_array = messages.map do |m|
      {
        id: m.id,
        user_id: m.user.id,
        name: m.user.name,
        content: m.content,
        email: m.user.email,
        created_at: m.created_at,
        likes: m.likes.map { |like| { id: like.id, email: like.user.email }  }
      }
    end

    render json: messages_array, status: :ok
  end

end
