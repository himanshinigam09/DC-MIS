class SessionsController < ApplicationController
	layout "index", :only => [:index]
	def new 
    
end

def create

  @user = User.find_by_email(params[:session][:email])
  if @user && @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
    redirect_to '/departments'
  else
    render 'new'
  end 
end


def destroy 
  session[:user_id] = nil 
  redirect_to '/' 
end




end
