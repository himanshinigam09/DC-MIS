class DashboardsController < ApplicationController
  # GET /dashboards
  # GET /dashboards.json
before_filter :zero_users_or_authenticated



  def index
    @dashboards = Dashboard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dashboards }
    end
  end

  # GET /dashboards/1
  # GET /dashboards/1.json
  def show
    @dashboard = Dashboard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dashboard }
    end
  end

  # GET /dashboards/new
  # GET /dashboards/new.json
  def new
    @dashboard = Dashboard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dashboard }
    end
  end

  # GET /dashboards/1/edit
  def edit
    @dashboard = Dashboard.find(params[:id])
  end

  # POST /dashboards
  # POST /dashboards.json
  def create
    @dashboard = Dashboard.new(dashboard_params)

    respond_to do |format|
      if @dashboard.save
        format.html { redirect_to @dashboard, notice: 'Dashboard was successfully created.' }
        format.json { render json: @dashboard, status: :created, location: @dashboard }
      else
        format.html { render action: "new" }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashboards/1
  # PATCH/PUT /dashboards/1.json
  def update
    @dashboard = Dashboard.find(params[:id])

    respond_to do |format|
      if @dashboard.update_attributes(dashboard_params)
        format.html { redirect_to @dashboard, notice: 'Dashboard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboards/1
  # DELETE /dashboards/1.json
  def destroy
    @dashboard = Dashboard.find(params[:id])
    @dashboard.destroy

    respond_to do |format|
      format.html { redirect_to dashboards_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def dashboard_params
      params.require(:dashboard).permit()
    end

 
  
 def zero_users_or_authenticated
  unless User.count == 0 || current_user
    flash[:notice] = "You must be logged in to access this section"
    redirect_to login_path
    return false
  end
end
end
