class UsersController < ApplicationController
  
  
  def user_params
    params.require(:user).permit(:user_id, :email)
  end



    
  def new
    # default: render 'new' template
  end
  
  def create
    @user = User.create_user!(user_params)
    if @user == true then
        flash[:notice] = "#{user_params[:user_id]}. Your account has been created."
    else 
        flash[:notice] = "Sorry, this user-id is taken. Try agian"
    end
    redirect_to login_path
  end
end
