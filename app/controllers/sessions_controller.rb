class SessionsController < ApplicationController
  def session_params
    params.require(:user).permit(:user_id, :email)
  end
  
  def new
  end
  
  def create
    @user = User.find_by user_id: session_params[:user_id], email: session_params[:email]
    if @user
      session[:session_token] =@user.session_token
      flash[:notice] = "Your are lagin as #{@user.user_id}."
      redirect_to movies_path

    else
      flash[:notice] = "Login Fail"
      redirect_to login_path

    end

  end
  
  
  def destroy
    reset_session
    redirect_to movies_path
  end
end
