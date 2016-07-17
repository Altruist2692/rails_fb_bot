class ProcessRequestController < ApplicationController
	def index
		if params[‘hub.verify_token’] == “mytoken”
		 render text: params[‘hub.challenge’] and return
		else
		 render text: ‘error’ and return
		end
	end
end
