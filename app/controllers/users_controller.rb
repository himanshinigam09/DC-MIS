class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user].permit(:password, :email, :password_confirmation))
 
    
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You signed up successfully"
      redirect_to '/faq'
    else
      flash[:error] = 'An error occured!'
      render 'new'
    end

  end
  private

  def user_params
params.require(:user).permit(:password, :email, :password_confirmation)
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end



