class BooksController < ApplicationController
  # GET /events
  # GET /events.json
  before_filter :zero_users_or_authenticated

  layout "index", :only => [:index]
  def index
    @books = Book.all

    @books = Book.search(params[:search]).order("title").page(params[:page])

   

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @book = Book.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      #format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @book = Book.new

     


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book }
    end
  end

  # GET /events/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @book = Book.new(book_params)


    respond_to do |format|
      if @book.save 
        
          
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render json: @book, status: :created, location: @book }
      
      else
        format.html { render action: "new" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy

    @book = Book.find(params[:id]) 
    @book.destroy 

    respond_to do |format|
      format.html { redirect_to books_url }
    end

  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def book_params
      params.require(:book).permit(:ISBN_number, :author, :edition, :publication, :title)
    end
def zero_users_or_authenticated
  unless User.count == 0 || current_user
    flash[:notice] = "You must be logged in to access this section"
    redirect_to login_path
    return false
  end
end


end
