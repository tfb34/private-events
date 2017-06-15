class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
  	session[:user_id]
  end

  def current_user
  	current_user = User.find_by(id: session[:user_id])
  end

  def logout
  	session[:user_id] = nil
  end

  helper_method :logged_in?, :current_user, :logout
end
