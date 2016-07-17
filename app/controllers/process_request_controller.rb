class ProcessRequestController < ApplicationController
	def index
		logger.debug "PARAMS => >>>>> #{params}"
		hub_challenge = params[:hub_challenge]
		respond_to do |format|
			format.all {render text: 	hub_challenge}
		end
	end
end
