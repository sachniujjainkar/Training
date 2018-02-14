class UsersController < ApplicationController
def index
 @users = User.all 
end

 def new
    @user = User.new
    unless current_user
      @user =User.new

      
    end
  end
def edit
  @user = User.find(params[:id])
  
end
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "sucessfull sign up....Welcome to the  App!"
      redirect_to sessions_path
    else
      flash[:danger] = "please fill correct infornation.." # Not quite right!
      #redirect_to '/signup'
      render 'user/new'
    end
  end

  def show
    @user=User.find(params[:id])
  end



def update
   @user = User.find(params[:id]) 

    # @register = Register.find(params[:id])
    if @user.update(user_params)
      flash[:success] = 'User was successfully updated.'
      redirect_to users_path 
    else
      flash[:danger] = "please fill correct infornation.." # Not quite right!
      redirect_to 'user/edit'
    end
  end

def destroy
  @user=User.find(params[:id])
  @user.destroy

  redirect_to users_path
end

private def user_params
    params.require(:user).permit(:name, :email, :contact, :password, :password_confirmation)
  end
end

