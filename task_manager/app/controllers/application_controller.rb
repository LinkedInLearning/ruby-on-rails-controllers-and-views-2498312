class ApplicationController < ActionController::Base

  before_action :get_user_info_from_session
  before_action :confirm_logged_in

  private

  def get_user_info_from_session
    @username = cookies[:username]
    @user_id = session[:user_id]
  end

  def logged_in?
    session[:user_id].present?
  end

  def confirm_logged_in
    unless logged_in?
      flash[:notice] = 'Please log in'
      redirect_to(login_path)
    end
  end

end
