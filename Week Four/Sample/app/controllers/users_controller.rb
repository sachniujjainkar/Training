class UsersController < ApplicationController

 def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "sucessfull sign up....Welcome to the  App!"


      redirect_to "user/registers/new"

    else
      flash[:danger] = "please fill correct infornation.." # Not quite right!
      #redirect_to '/signup'
      render 'user/new'
    end
  end

  def show
    @user=User.find(params[:id])
    #render 'users/index'
  end

def index
 @users = User.all 
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to '/'
end

private def user_params
    params.require(:user).permit(:name, :email, :contact, :password, :password_confirmation)
  end
end

