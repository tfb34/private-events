class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by(name: params[:session][:name])
  	if @user
  		session[:user_id] = @user.id
  		flash[:success] = "User found."
  		redirect_to @user 
  	else
  		flash.now[:error] = "User does not exist."
  		render 'sessions/new'
  	end
  end

  def destroy
  	logout
  	flash[:success] = "Logged out."
  	redirect_to request.referrer

  end

end
