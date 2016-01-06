class SessionsController < ApplicationController
<<<<<<< HEAD
  layout "index", :only => [:index]
  def new 
=======
	layout "index", :only => [:index]
	def new 
>>>>>>> 216b9ee33b1f74f9672d0e3e17ea96046f7a954d
    
end

def create

  @user = User.find_by_email(params[:session][:email])
  if @user && @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
    redirect_to '/departments'
  else
<<<<<<< HEAD
    flash[:notice] = 'Invalid email/password combination' # Not quite right!
=======
>>>>>>> 216b9ee33b1f74f9672d0e3e17ea96046f7a954d
    render 'new'
  end 
end

<<<<<<< HEAD
=======

def destroy 
  session[:user_id] = nil 
  redirect_to '/' 
end



>>>>>>> 216b9ee33b1f74f9672d0e3e17ea96046f7a954d

def destroy 
  session[:user_id] = nil 
  redirect_to '/' 
end




end
