class ProcessRequestController < ApplicationController
	def index
		logger.debug "PARAMS => >>>>> #{params}"
		hub_challenge = params[:hub_challenge]
		render text: 	hub_challenge
	end
end
