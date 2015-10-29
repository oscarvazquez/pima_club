class SizesController < ApplicationController

	def create

	end

	def destroy
		size = Size.find(params[:id])
		size.destroy
		redirect_to "/facets"
	end

end