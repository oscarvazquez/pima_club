class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception
    def index
    end

    def admin_status
    	if !User.check_role(session[:user_id])
    		redirect_to "/products"
    	end
    end

    def admin_login
      if User.check_role(session[:user_id])
        redirect_to "/dashboard" 
        return
      else
        redirect_to "/products"
      end
    end

    def grab_all_attributes
      @attributes = Hash.new
      @attributes['colors'] = Color.all
      @attributes['styles'] = Style.all
      @attributes['sizes'] = Size.all
      @attributes
    end

    helper_method :current_user, :logged_in?

    def current_user
      @current_user ||= User.find_by_id(session[:user_id])
    end

     def logged_in?
       current_user != nil
     end
end
