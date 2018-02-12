class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      # render 'students/index'

        #redirect_to "/user/registers/new"
        redirect_to  new_user_register_path(user)
            # redirect_to '/users/:user_id/register/new'

      
      

     #render 'registers/new'
    else
    # If user's login doesn't work, send them back to the login form.
    #byebug
      # render 'sessions/new'
      flash[:danger] = "please fill correct infornation.." # Not quite right!

      render "/sessions/new"
          end
  end


  def destroy
    session[:user_id] = nil
    # redirect_to '/login'
    p "=============================="
    p session[:user_id]
    redirect_to root_path

  end
  def logout
    session[:user_id] = nil
    # redirect_to '/login'
    p "=============================="
    p session[:user_id]
    redirect_to root_path
  end

 
  def show
    
  end
end
