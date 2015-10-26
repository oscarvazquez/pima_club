class DashboardsController < ApplicationController
	layout "admin"
	before_action :admin_status, only: [:index]
	def index
		@user = User.user_info(session[:user_id])
	end

end