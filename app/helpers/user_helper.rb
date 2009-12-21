module UserHelper

  # maybe this belongs somewhere else
  def logged_in?
    !logged_out?
  end

  def logged_out?
    session[:user_id].nil?
  end

end
