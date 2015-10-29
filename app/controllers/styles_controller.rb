class StylesController < ApplicationController

	def create

	end

	def destroy
		style = Style.find(params[:id])
		style.destroy
		redirect_to "/facets"
	end

end


