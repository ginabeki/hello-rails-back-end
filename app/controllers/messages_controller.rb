class MessagesController < ApplicationController
  def random_greeting
    response.headers['Access-Control-Allow-Origin'] = 'http://localhost:3001'
    response.headers['Access-Control-Allow-Methods'] = 'GET'
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
    message = Message.order('RANDOM()').first
    render json: { greeting: message.greeting }
  end
end
