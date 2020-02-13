class SessionsController < ApplicationController
  
  def new
      render :layout => false
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else 
      flash[:message] = "Incorrect Login or Password"
      render :new,:layout => false
    end
  end

  def destroy
    session[:user_id] = nil 
    redirect_to new_session_path
  end
end
