class InfrastructuresController < ApplicationController
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
      format.json { render json: @projects }
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
    @system_information = SystemInformation.find(params[:id])
    @issued_resource = IssuedResource.find(params[:id])
    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
      format.json { render json: @book }
      format.json { render json: @system_information }
      format.json { render json: @issued_resource }

    end
  end

def create
  @book = Book.new
  @system_information = SystemInformation.new
  @issued_resource = IssuedResource.new
 
    @book = Book.new(params[:book])
    @system_information = SystemInformation.new(params[:system_information])
    @issued_resource = IssuedResource.new(params[:issued_resource])

    

    respond_to do |format|
      if @book.save  
        format.html { redirect_to infrastructures_path,notice: 'Book was successfully created.' }
        format.json { render json: @book,status: :created, location: @book }
      elsif
        @system_information.save  
        format.html { redirect_to infrastructures_path,notice: 'SystemInformation was successfully created.' }
        format.json { render json: @system_information,status: :created, location: @system_information }
      elsif
        @issued_resource.save  
        format.html { redirect_to infrastructures_path,notice: 'IssuedResource was successfully created.' }
        format.json { render json: @issued_resource,status: :created, location: @issued_resource}
      elsif
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
end
def edit
   @book = Book.find(params[:id])
   @system_information = SystemInformation.find(params[:id])
   @issued_resource = IssuedResource.find(params[:id])
end



end
