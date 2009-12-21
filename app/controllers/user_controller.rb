class UserController < ApplicationController
  def login
    @user = User.new
    @user.username = params[:username]
  end

  def private
    #require_login
  end

  # this maybe belongs in the application controller or model something.
  def authenticate
    @user = User.new(params[:userform])
    valid_user = User.authenticate( @user.username, @user.password )
    if valid_user
      session[:user_id] = valid_user.username
      if session[:return_url].nil?
        redirect_to :action => 'private'
        return false
      else
        redirect_to session[:return_url]
        return false
      end
    else
      flash[:notice] = "Invalid user/password"
      redirect_to :action => 'login'
    end
  end

  def logout
    if session[:user_id]
      reset_session
    end
    redirect_to :action => 'login'
  end
end
