class CorrespondencesController < ApplicationController
  
  # GET /correspondences
  # GET /correspondences.json

 layout "index", :only => [:index]
 before_filter :zero_users_or_authenticated


 
  def index
    

    @correspondences = Correspondence.all
    @correspondences = Correspondence.order("created_at DESC").page(params[:page]).per(4) 
 

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @correspondences }
    end
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
    @correspondences = Correspondence.order("").page(params[:page]).per(4) 

       

        
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @correspondence }
    end
  end

  # GET /correspondences/1/edit
  def edit
    @correspondence = Correspondence.find(params[:id])
    @correspondences = Correspondence.order("").page(params[:page]).per(4) 

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
    @correspondences = Correspondence.find(params[:id])
    @correspondences.destroy

    respond_to do |format|
      format.html { redirect_to correspondences_url }
      format.json { head :no_content }
    end
  end
 def zero_users_or_authenticated
  unless User.count == 0 || current_user
       redirect_to login_path(notice:"You must be logged in to access this section")

    return false
  end
end 
end
