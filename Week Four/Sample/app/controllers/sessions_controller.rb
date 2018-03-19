class SessionsController < ApplicationController
  def new
  end

def index
  
end
  def create
    user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.

    if user && user.authenticate(params[:password])
      
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id
          redirect_to sessions_path
        # ###redirect_to  new_user_register_path(user)
    else
    # If user's login doesn't work, send them back to the login form.
          flash[:danger] = "please fill correct infornation.." # Not quite right!
      render "/sessions/new"
    end
  end
  def destroy
    session[:user_id] = nil
    p "=============================="
    p session[:user_id]
    redirect_to root_path

  end
  # def logout
  #   session[:user_id] = nil
  #   p "=============================="
  #   p session[:user_id]
  #   redirect_to root_path
  # end

 
  def show
    
  end
end
