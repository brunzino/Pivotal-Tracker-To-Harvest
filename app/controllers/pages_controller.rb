class PagesController < ApplicationController

	skip_before_action :verify_authenticity_token, only: [:accept_request]

	def welcome
	end

	def accept_request

		@kind = params[:kind]
		@highlight = params[:highlight]
		@project_name = params[:project][:name];
		@story_name = params[:primary_resources][0][:name];
		@pt_user_id = params[:performed_by][:id];
		@pt_user_name = params[:performed_by][:name];
		logger.info "Received request from Pivotal Tracker: Action: #{@kind} - #{@highlight}\n\t Project name: #{@project_name}, Story name: #{@story_name}, User name: #{@pt_user_name} (#{@pt_user_id})"

		redirect_to :action => :welcome
	end
	
end
