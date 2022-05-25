class ApplicationController < ActionController::Base

  private

  def get_user_info_from_session
    @username = cookies[:username]
    @user_id = session[:user_id]
  end

  def logged_in?
    session[:user_id].present?
  end

end
