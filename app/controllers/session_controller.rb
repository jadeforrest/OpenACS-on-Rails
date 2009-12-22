class SessionController < ApplicationController

  def new
    @user = User.new
    @user.username = params[:username]
  end

  def create
    @user = User.new(params[:userform])
    valid_user = User.authenticate( @user.username, @user.password )
    if valid_user
      session[:user_id] = valid_user.username
      if session[:return_url].nil?
        redirect_to '/'
        return false
      else
        redirect_to session[:return_url]
        return false
      end
    else
      flash[:notice] = "Invalid user/password"
      redirect_to :action => 'new'
    end
  end

  # update view
  def destroy
    if session[:user_id]
      reset_session
    end
    redirect_to :action => 'new'
  end

end
