class SizesController < ApplicationController

	layout "admin", only: [:edit]
	def create

	end

	def destroy
		size = Size.find(params[:id])
		size.destroy
		redirect_to "/facets"
	end

	def edit 
		@size = Size.find(params[:id])
	end

	def update 
		@size = Size.find(params[:id])
		@size.update_attribute(:att, params[:name])
		redirect_to "/facets"
	end

end