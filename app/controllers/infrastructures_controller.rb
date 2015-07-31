class InfrastructuresController < ApplicationController
layout "index", :only => [:index]
def index
    @books = Book.all
    @system_informations = SystemInformation.all
    @issued_resources = IssuedResource.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

def new
	@book = Book.new
	@system_information = SystemInformation.new
	@issued_resource = IssuedResource.new
  

	respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
end

def show
    @book = Book.find(params[:id])
    @system_information = SystemInformation.find(params[:id])
    @issued_resource = IssuedResource.find(params[:id])
    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
end

def create
    @book = Book.new(params[:book])

    respond_to do |format|
      if @book.save
        format.html { redirect_to infrastructures_path,notice: 'Book was successfully created.' }
        format.json { render json: @book,status: :created, location: @book }
      else
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
end
def edit
   @book = Book.find(params[:id])
end



end
