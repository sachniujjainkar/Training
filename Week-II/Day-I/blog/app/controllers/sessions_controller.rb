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
      flash[:success] = "sucessfull Login....Welcome to the Blog App!"
      redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      flash[:danger] = "Invalid email or password please try again......"
      #redirect_to '/login'
      render 'sessions/new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "sucessfull Log out....bye...Have a nice day....!"
    redirect_to '/login'
  end

end
