class PagesController < ApplicationController

	def welcome
	end

	def accept_request
		puts "Occurred at #{params[:occurred_at]}"
		redirect_to :action => :welcome
	end
	
end
