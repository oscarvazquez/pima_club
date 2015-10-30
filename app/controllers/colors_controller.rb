class ColorsController < ApplicationController

	layout "admin", only: [:edit]
	def create

	end

	def destroy
		color = Color.find(params[:id])
		color.destroy
		redirect_to "/facets"
	end

	def edit
		@color = Color.find(params[:id])
	end

	def update
		@color = Color.find(params[:id])
		@color.update_attribute(:att, params[:name])
		redirect_to "/facets"
	end

end