# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  before_filter :authorize
  helper_method :logged_in?, :logged_out?

  def logged_in?
    !logged_out?
  end

  def logged_out?
    session[:user_id].nil?
  end

  protected

  # override this in any controller that requires authentication
  # for example:     ["new"].include?(action_name)
  def require_login?
    false
  end

  private

  def authorize
    if require_login? && session[:user_id].nil?
      flash[:notice] = "Please login to access that page"
      session[:return_url] = request.request_uri
      redirect_to :controller => 'session', :action => 'new'
      return false
    end
  end

  filter_parameter_logging :password
end
