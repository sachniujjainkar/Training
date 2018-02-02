class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "sucessfull sign up....Welcome to the Blog App!"

      redirect_to '/'
    else
      flash[:danger] = "please fill correct infornation.." # Not quite right!
      #redirect_to '/signup'
      render 'users/new'
    end
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
