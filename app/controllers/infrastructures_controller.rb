class InfrastructuresController < ApplicationController
 before_filter :zero_users_or_authenticated


layout "index", :only => [:index]

def index
    @books = Book.all
    @system_informations = SystemInformation.all
    @issued_resources = IssuedResource.all
    @book = Book.new
  @system_information = SystemInformation.new
  @issued_resource = IssuedResource.new
 


    respond_to do |format|
      format.html # index.html.erb
      
      format.json { render json: @books }
      format.json { render json: @system_informations }
      format.json { render json: @issued_resources }
    end
  end

def new
  @book = Book.new
  @system_information = SystemInformation.new
  @issued_resource = IssuedResource.new
 

  respond_to do |format|

    format.html
    format.js      
    format.json { render json: @book }
    format.json { render json: @system_information }
    format.json { render json: @issued_resource }
  end
end

def show
    @book = Book.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book }
    end
end
def show1
    @system_information = SystemInformation.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @system_information }
    end
    
end
def show2
  @issued_resource = IssuedResource.find(params[:id])
    
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @issued_resource }
  end
end
def create
  
 
    @book = Book.new(params[:book])
    @system_information = SystemInformation.new(params[:system_information])
    @issued_resource = IssuedResource.new(params[:issued_resource])

    respond_to do |format|
      if @book[:title]!=nil
        @book.save
        format.html { redirect_to infrastructures_path,notice: 'Book was successfully created.' }
        format.json { render json: @book,status: :created, location: @book }
      elsif @system_information[:system_name]!=nil
        @system_information.save
        format.html { redirect_to infrastructures_path,notice: 'SystemInformation was successfully created.' }
        format.json { render json: @system_information,status: :created, location: @system_information }
      elsif @issued_resource[:issued_by]!=nil
        @issued_resource.save  
        format.html { redirect_to infrastructures_path,notice: 'IssuedResource was successfully created.' }
        format.json { render json: @issued_resource,status: :created, location: @issued_resource}
      else
        format.html { render action: "index" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
end
def edit
   @book = Book.find(params[:id])
   
end
 def destroy
    @book = Book.find(params[:id])
    @system_information = SystemInformation.find(params[:id])
    @issued_resource = IssuedResource.find(params[:id])
    if @book.destroy
      respond_to do |format|
      format.html { redirect_to book_url }
      format.json { head :no_content }
    end
    elsif @system_information.destroy
      respond_to do |format|
      format.html { redirect_to system_information_url }
      format.json { head :no_content }
    end
    elsif @issued_resource.destroy
      respond_to do |format|
      format.html { redirect_to issued_resource_url }
      format.json { head :no_content }
    end
  end

    
    
  end

def zero_users_or_authenticated
  unless User.count == 0 || current_user
       redirect_to login_path(notice:"You must be logged in to access this section")

    return false
  end
end 
end
