class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :logged_in?


  def current_user
  	session[:user]
  end

  def logged_in?
  	 !!current_user 
  	
  end

  def require_user
  	if !logged_in?
  		 flash[:error] = "You must be logged in for this action"
  		 redirect_to root_path
 		end
	end
end
