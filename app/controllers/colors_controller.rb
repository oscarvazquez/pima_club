class ColorsController < ApplicationController

	def create

	end

	def destroy
		color = Color.find(params[:id])
		color.destroy
		redirect_to "/facets"
	end

end