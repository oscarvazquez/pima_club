class SessionsController < ApplicationController
  
  def create

    oauth_login

  end
  
  def new 
  
    login_local_user(user_params)
  
  end

  def destroy

    log_out

  end

  
  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

  def login_local_user(params)
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        admin_login
      else 
        flash[:error] = "Invalid Login Error"
        redirect_to "/"
      end
  end

  def oauth_login
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    admin_login
  end

  def log_out
    session[:user_id] = nil
    redirect_to "/products"
  end

end