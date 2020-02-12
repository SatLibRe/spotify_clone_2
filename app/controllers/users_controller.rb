class UsersController < ApplicationController
  before_action :authorized, except: [:new, :create] 

  def index
    @users = User.all
  end

  def new
    render :layout => false
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:message] = "User successfully created"
      session[:user_id] = @user.id
      redirect_to new_session_path
    else
      flash.now[:message] = "User name already exits"
      render :new
    end
  
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update
    redirect_to user_path(@user)
  end

  def show
    @user = current_user
  end

  def destroy
    @user = current_user
    @user.delete
    redirect_to new_session_path
  end

  private 

  def user_params
    params.require(:user).permit(:name, :password)
  end 

end

