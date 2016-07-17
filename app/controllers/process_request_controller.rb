class ProcessRequestController < ApplicationController
	def index
		@message = params[‘hub.challenge’]
	 	render text: @message and return
	end
end
