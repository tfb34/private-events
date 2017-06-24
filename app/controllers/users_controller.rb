class UsersController < ApplicationController
  def new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Successfully created new user."
  		redirect_to @user
  	else
  		flash.now[:warning] = @user.errors.full_messages
  		render 'new'
  	end
  end

  def show
      @user = User.find_by(id: params[:id])
      @events = @user.events.collect(&:name)
  end

  private

  def user_params
  	params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
