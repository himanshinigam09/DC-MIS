class CorrespondencesController < ApplicationController
  before_filter :authorize
  # GET /correspondences
  # GET /correspondences.json
 layout "index", :only => [:index]
  def index
    
    @correspondences = Correspondence.all
    @correspondences = Correspondence.order("subject").page(params[:page]).per(2) 
 
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @correspondences }
    end
  end
def page 
 @correspondences = Correspondence.all.order("created_at DESC").paginate(page:params[:page], per_page: 1 ) 
end
  # GET /correspondences/1
  # GET /correspondences/1.json
  def show

    @correspondence = Correspondence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @correspondence }
    end
  end

  # GET /correspondences/new
  # GET /correspondences/new.json
  def new
    @correspondence = Correspondence.new
        @correspondences = Correspondence.order("subject").page(params[:page]).per(5) 

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @correspondence }
    end
  end

  # GET /correspondences/1/edit
  def edit
    @correspondence = Correspondence.find(params[:id])

  end

  # POST /correspondences
  # POST /correspondences.json
  def create
    @correspondence = Correspondence.new(params[:correspondence])

    respond_to do |format|
      if @correspondence.save
        format.html { redirect_to @correspondence, notice: 'Correspondence was successfully created.' }
        format.json { render json: @correspondence, status: :created, location: @correspondence }
      else
        format.html { render action: "new" }
        format.json { render json: @correspondence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /correspondences/1
  # PUT /correspondences/1.json
  def update
    @correspondence = Correspondence.find(params[:id])

    respond_to do |format|
      if @correspondence.update_attributes(params[:correspondence])
        format.html { redirect_to @correspondence, notice: 'Correspondence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @correspondence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correspondences/1
  # DELETE /correspondences/1.json
  def destroy
    @correspondence = Correspondence.find(params[:id])
    @correspondence.destroy

    respond_to do |format|
      format.html { redirect_to correspondences_url }
      format.json { head :no_content }
    end
  end
end
