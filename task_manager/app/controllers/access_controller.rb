class AccessController < ApplicationController

  # display menu
  def menu
    get_user_info_from_session
  end

  # display login form
  def new
    get_user_info_from_session
    if logged_in?
      redirect_to(menu_path)
    end
  end

  # processs login form
  def create
    logger.info("*** Login User #{params[:username]}")
    # do login process here
    cookies[:username] = params[:username]
    session[:user_id] = 1483
    flash[:notice] = "Log in successful"
    redirect_to(menu_path)
  end

  # logout user
  def destroy
    logger.info("*** Logout User #{cookies[:username]}")
    # do logout process here
    cookies[:username] = nil
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(login_path)
  end

end
