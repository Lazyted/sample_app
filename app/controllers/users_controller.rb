class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		# Show a one off "flash" message after succeful registration
  		flash[:success] = "Welcome to the Sample App!"
  		# Handle a successful save
  		redirect_to @user
  	else
  		render 'new'
  	end
  end
end
