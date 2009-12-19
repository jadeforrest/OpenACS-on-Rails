module UserHelper

  def logged_in?
    !logged_out?
  end

  def logged_out?
    session[:user_id].nil?
  end

  def maybe_login

  end

end
