class ProcessRequestController < ApplicationController
  def index
    @message = params['hub.challenge']
    render text: @message
  end

  def webhook

  end

  def receive_message
    if params[:entry]
      messaging_events = params[:entry][0][:messaging]
      messaging_events.each do |event|
        sender = event[:sender][:id]
        if (text = event[:message] && event[:message][:text])
          body = {
           recipient: {
             id: sender
           },
           message: {
             text: "Hi there! You said: #{text}. The Bots"
           }
          }.to_json
          response = HTTParty.post(
           "https://graph.facebook.com/v2.6/me/messages?access_token=#{ENV[TOKEN_ACCESS]}",
           body: body,
           headers: { 'Content-Type' => 'application/json' }
          )
        end
      end
  end
  
    render nothing: true
  end
end
