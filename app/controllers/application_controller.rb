class ApplicationController < ActionController::Base
   # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  protect_from_forgery with: :exception
 layout "application"
helper_method :current_user 

def current_user 
  @current_user ||= User.find(session[:user_id]) if session[:user_id] 
end


 
 def require_login
    unless user_signed_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to '/login' # halts request cycle
    end
  end
<<<<<<< HEAD
=======


  
>>>>>>> 216b9ee33b1f74f9672d0e3e17ea96046f7a954d


  

end
