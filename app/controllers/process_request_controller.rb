class ProcessRequestController < ApplicationController
	def index
		 	render text: params[‘hub.challenge’] and return
	end
end
