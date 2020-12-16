class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    if @user.save
#      flash.notice = "New user '#{@user.username}' has been created."
      puts '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! USER SAVED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
      redirect_to new_user_path
    else
#      flash.notice = "An error has occured. New user not created."
      puts '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! USER NOT SAVED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
      render :new
    end
  end
  
end
