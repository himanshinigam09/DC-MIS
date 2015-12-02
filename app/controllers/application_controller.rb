class ApplicationController < ActionController::Base
   # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  protect_from_forgery with: :exception
 layout "application"
helper_method :current_user 

def current_user 
  @current_user ||= User.find_by_auth_token( cookies[:auth_token]) if cookies[:auth_token]
 
end


 
 def require_login
    unless user_signed_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to '/login' # halts request cycle
    end
  end


  

end
