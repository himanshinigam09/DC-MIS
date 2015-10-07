class SystemInformationsController < ApplicationController

    before_filter :zero_users_or_authenticated

  layout "index", :only => [:index]
  def index
    @system_informations = SystemInformation.all
    @system_informations = SystemInformation.order("created_at DESC").page(params[:page]).per(4)
    
 	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @system_informations }
    end
  end

 
  def show
    @system_information = SystemInformation.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @system_information }
    end
  end
  def new
    @system_information = SystemInformation.new
    respond_to do |format|
    	format.html
      format.json { render json: @system_information }
	  end
  end

  # GET /events/1/edit
  def edit
    @system_information = SystemInformation.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
     @system_information = SystemInformation.new(params[:system_information])
    
    respond_to do |format|
      if @system_information.save 
        
          
        format.html { redirect_to @system_information, notice: 'system_information was successfully created.' }
        format.json { render json: @system_information, status: :created, location: @system_information }
      
      else
        format.html { render action: "new" }
        format.json { render json: @system_information.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    @system_information = SystemInformation.find(params[:id])

    respond_to do |format|
      if @system_information.update_attributes(system_information_params)
        format.html { redirect_to @system_information, notice: 'system_information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @system_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy

    @system_information = SystemInformation.find(params[:id]) 
    @system_information.destroy 

    respond_to do |format|
      format.html { redirect_to system_informations_url }
    end

  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def system_information_params
      params.require(:system_information).permit(:access, :hdd_capacity, :lan, :monitor_type, :os_installed, :ram, :ram_type, :sw_details, :system_name)
    end
def zero_users_or_authenticated
  unless User.count == 0 || current_user
    flash[:notice] = "You must be logged in to access this section"
    redirect_to login_path
    return false
  end
end
end



