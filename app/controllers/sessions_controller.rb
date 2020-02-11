class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else 
      flash.now[:message] = "Incorrect Login or Password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil 
  end
end
