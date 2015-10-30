class StylesController < ApplicationController

	layout "admin", only: [:edit]
	def create

	end

	def destroy
		style = Style.find(params[:id])
		style.destroy
		redirect_to "/facets"
	end

	def edit 
		@style = Style.find(params[:id])
	end

	def update
		@style = Style.find(params[:id])
		@style.update_attribute(:att, params[:name])
		redirect_to "/facets"
	end


end


