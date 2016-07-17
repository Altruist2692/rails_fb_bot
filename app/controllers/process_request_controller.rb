class ProcessRequestController < ApplicationController
	def index
		@message = params['hub.challenge']
	 	render text: @message
	end
end
