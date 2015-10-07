class CurrentProjectsController < ApplicationController
  # GET /current_projects
  # GET /current_projects.json
  layout "index", :only => [:index]
  def index
    @current_projects = CurrentProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @current_projects }
    end
  end

  # GET /current_projects/1
  # GET /current_projects/1.json
  def show
    @current_project = CurrentProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @current_project }
    end
  end

  # GET /current_projects/new
  # GET /current_projects/new.json
  def new
    @current_project = CurrentProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @current_project }
    end
  end

  # GET /current_projects/1/edit
  def edit
    @current_project = CurrentProject.find(params[:id])
  end

  # POST /current_projects
  # POST /current_projects.json
  def create
    @current_project = CurrentProject.new(current_project_params)

    respond_to do |format|
      if @current_project.save
        format.html { redirect_to @current_project, notice: 'Current project was successfully created.' }
        format.json { render json: @current_project, status: :created, location: @current_project }
      else
        format.html { render action: "new" }
        format.json { render json: @current_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_projects/1
  # PATCH/PUT /current_projects/1.json
  def update
    @current_project = CurrentProject.find(params[:id])

    respond_to do |format|
      if @current_project.update_attributes(current_project_params)
        format.html { redirect_to @current_project, notice: 'Current project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @current_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_projects/1
  # DELETE /current_projects/1.json
  def destroy
    @current_project = CurrentProject.find(params[:id])
    @current_project.destroy

    respond_to do |format|
      format.html { redirect_to current_projects_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def current_project_params
      params.require(:current_project).permit()
    end
end
