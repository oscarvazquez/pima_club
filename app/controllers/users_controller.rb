class UsersController < ApplicationController
  
  def index

  end

  def show

  end

  def create
    create_user(user_params)
  end

  
  private 

  def user_params
    if params[:password] != params[:confirm_password]
      flash[:error] = "Password and Confirm Password must be the same"
      redirect_to "/users"
    end
    params.require(:user).permit(:first_name, :last_name, :email, :password, :confirm_password)
  end

  def create_user(user_params)
    user_params.delete(:confirm_password)
    @user = User.new(user_params)
    @user.role = "member"
    @user.save
      if @user.errors.count > 0
        flash[:errors] = @user.errors.full_messages
        redirect_to "/products"
      else
        @user.uid = @user.id
        flash[:success] = "Succesfully created user!"
        redirect_to "/"
      end
  end

  

end
