class UserController < ApplicationController
  def login
    @user = User.new
    @user.username = params[:username]
  end

  def private
    if session[:user_id].nil?
      flash[:notice] = "Please login to access that page"
      redirect_to :action => 'login'
    end
  end

  def authenticate
    @user = User.new(params[:userform])
    valid_user = User.authenticate( @user.username, @user.password )
    if valid_user
      session[:user_id] = valid_user.username
      redirect_to :action => 'private'
    else
      flash[:notice] = "Invalid user/password"
      redirect_to :action => 'login'
    end
  end

  def logout
    if session[:user_id]
      reset_session
      redirect_to :action => 'login'
    end
  end
end
