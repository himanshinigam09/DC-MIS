class PublicationsController < ApplicationController
  # GET /publications
  # GET /publications.json
  before_filter :zero_users_or_authenticated

  layout "index", :only => [:index]
  def index
    @publications = Publication.all
@publications = Publication.search(params[:search]).order("date_of_publication DESC").page(params[:page]).per(5)


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @publications }
    end
  end

  # GET /publications/1
  # GET /publications/1.json
  def show
    @publication = Publication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @publication }
    end
  end

  # GET /publications/new
  # GET /publications/new.json
  def new
    @publication = Publication.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @publication }
    end
  end

  # GET /publications/1/edit
  def edit
    @publication = Publication.find(params[:id])
  end

  # POST /publications
  # POST /publications.json
  def create
    @publication = Publication.new(publication_params)

    respond_to do |format|
      if @publication.save
        format.html { redirect_to @publication, notice: 'Publication was successfully created.' }
        format.json { render json: @publication, status: :created, location: @publication }
      else
        format.html { render action: "new" }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publications/1
  # PATCH/PUT /publications/1.json
  def update
    @publication = Publication.find(params[:id])

    respond_to do |format|
      if @publication.update_attributes(publication_params)
        format.html { redirect_to @publication, notice: 'Publication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publications/1
  # DELETE /publications/1.json
  def destroy
    @publication = Publication.find(params[:id])
    @publication.destroy

    respond_to do |format|
      format.html { redirect_to publications_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def publication_params
      params.require(:publication).permit(:abstract, :author, :date_of_publication, :level, :link, :location, :organizer_name, :paper_id, :paper_title, :publication_name, :sponsers_name)
    end
  def zero_users_or_authenticated
  unless User.count == 0 || current_user
       redirect_to login_path(notice:"You must be logged in to access this section")

    return false
  end
end 
end