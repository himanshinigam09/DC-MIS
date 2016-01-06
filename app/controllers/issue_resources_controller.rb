class IssueResourcesController < ApplicationController
  # GET /issue_resources
  # GET /issue_resources.json
  layout "index", :only => [:index]

  def index
    @issue_resources = IssueResource.all
<<<<<<< HEAD
 @issue_resources = IssueResource.search(params[:search]).order("issue_date DESC").page(params[:page])
   respond_to do |format|
=======
    @issue_resources = IssueResource.search(params[:search]).order("type_of_resource").page(params[:page])

    respond_to do |format|
>>>>>>> 216b9ee33b1f74f9672d0e3e17ea96046f7a954d
      format.html # index.html.erb
      format.json { render json: @issue_resources }
    end
  end

  # GET /issue_resources/1
  # GET /issue_resources/1.json
  def show
    @issue_resource = IssueResource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @issue_resource }
    end
  end

  # GET /issue_resources/new
  # GET /issue_resources/new.json
  def new
    @issue_resource = IssueResource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @issue_resource }
    end
  end

  # GET /issue_resources/1/edit
  def edit
    @issue_resource = IssueResource.find(params[:id])
  end

  # POST /issue_resources
  # POST /issue_resources.json
  def create
    @issue_resource = IssueResource.new(issue_resource_params)

    respond_to do |format|
      if @issue_resource.save
        format.html { redirect_to @issue_resource, notice: 'Issue resource was successfully created.' }
        format.json { render json: @issue_resource, status: :created, location: @issue_resource }
      else
        format.html { render action: "new" }
        format.json { render json: @issue_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issue_resources/1
  # PATCH/PUT /issue_resources/1.json
  def update
    @issue_resource = IssueResource.find(params[:id])

    respond_to do |format|
      if @issue_resource.update_attributes(issue_resource_params)
        format.html { redirect_to @issue_resource, notice: 'Issue resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @issue_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue_resources/1
  # DELETE /issue_resources/1.json
  def destroy
    @issue_resource = IssueResource.find(params[:id])
    @issue_resource.destroy

    respond_to do |format|
      format.html { redirect_to issue_resources_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def issue_resource_params
      params.require(:issue_resource).permit(:issue_date, :issue_time, :issued_by, :issued_to, :submission_date, :submission_time, :type_of_resource)
    end
end
