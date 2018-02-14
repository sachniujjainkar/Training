class RegistersController < ApplicationController
# http_basic_authenticate_with name: "renu", password: "123", only: :destroy


def index
    @registers = Register.all
end

 def new
    @register = Register.new
    @user = current_user
end

def edit
  @user = User.find(params[:user_id])
      @register =Register.find(params[:id])
    end

def create
    # @register = Register.new(user_params)
    @user = User.find(params[:user_id])
     @register = @user.registers.create(register_params)
    if @register.save

      session[:register_id] = @register.id
      flash[:success] = "sucessfull filled the form....Welcome to new University !"

      # render '/user/registers/show'
      redirect_to user_register_path(@user,@register)

    else
      flash[:danger] = "please fill correct infornation.." # Not quite right!
      #redirect_to '/signup'
      # render 'user/registers/new'
      render 'register/new'
      # redirect_to '/users/:user_id/register/new'
      
    end
end

def show
      @user = User.find(params[:user_id])
      @register=Register.find(params[:id])
        
end

def update
   @user = User.find(params[:user_id])
    @register = Register.find(params[:id])
    if @register.update(register_params)
     redirect_to user_registers_path(@user)
    else
      render 'register/edit'
    end
  end
def destroy
    @user = User.find(params[:user_id])
    @register = Register.find(params[:id])
    @register.destroy
      redirect '/'
  end



  private
  def register_params
    params.require(:register).permit(:coursename, :payment, :birthdate, :previous_course_name, :previous_course_year, :payment_type, :name, :cno, :email)
  end
end



