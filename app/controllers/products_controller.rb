class ProductsController < ApplicationController
	before_action :admin_status, only: [:create, :new, :show]
	layout "admin", only: [:new, :admin]
	
	  def index
	  	@user = User.user_info(session[:user_id])
	  end

	  def show
	  end

	  def new
	  	grab_all_attributes
	  end

	  def create
	  	create_product
	  end

	  def admin
	 	@products = Product.all
	  end


	  private 

	  def create_product
	  	p = Product.create(name: params[:name])
	  	if p.errors.count > 0
	  		flash[:errors] = p.errors.full_messages
	  		redirect_to "/products/new"
	  	else
		  	params[:color].each do |c|
		  		color = Color.find(c)
		  		ProductAttribute.create(facet: color, product: p)
		  	end
		  	params[:style].each do |s|
		  		style = Style.find(s)
		  		ProductAttribute.create(facet: style, product: p)
		  	end
		  	params[:size].each do |s|
		  		size = Size.find(s)
		  		ProductAttribute.create(facet: size, product: p)
		  	end
		  	redirect_to "/dashboard"
		end
	  end
end
