# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  before_filter :authorize

  protected

  # override this in any controller that requires authentication
  def require_login?
    false
  end

  private

  def authorize
    if require_login? && session[:user_id].nil?
      flash[:notice] = "Please login to access that page"
      session[:return_url] = request.request_uri
      redirect_to :controller => 'user', :action => 'login'
      return false
    end
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
