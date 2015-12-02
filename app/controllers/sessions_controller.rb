class SessionsController < ApplicationController
	layout "index", :only => [:index]
	def new 
    
end

def create

  @user = User.find_by_email(params[:email])
  if @user && @user.authenticate(params[:password])
    cookies.permanent[:auth_token] = user.auth_token
    session[:user_id] = @user.id
    redirect_to '/departments'
  else
    render 'new'
  end 
end


def destroy 
  cookies.delete(:auth_token)
  session[:user_id] = nil 
  redirect_to '/' 
end




end
