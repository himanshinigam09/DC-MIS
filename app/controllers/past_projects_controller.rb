class PastProjectsController < ApplicationController
  # GET /past_projects
  # GET /past_projects.json
  def index
    @past_projects = PastProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @past_projects }
    end
  end

  # GET /past_projects/1
  # GET /past_projects/1.json
  def show
    @past_project = PastProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @past_project }
    end
  end

  # GET /past_projects/new
  # GET /past_projects/new.json
  def new
    @past_project = PastProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @past_project }
    end
  end

  # GET /past_projects/1/edit
  def edit
    @past_project = PastProject.find(params[:id])
  end

  # POST /past_projects
  # POST /past_projects.json
  def create
    @past_project = PastProject.new(past_project_params)

    respond_to do |format|
      if @past_project.save
        format.html { redirect_to @past_project, notice: 'Past project was successfully created.' }
        format.json { render json: @past_project, status: :created, location: @past_project }
      else
        format.html { render action: "new" }
        format.json { render json: @past_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /past_projects/1
  # PATCH/PUT /past_projects/1.json
  def update
    @past_project = PastProject.find(params[:id])

    respond_to do |format|
      if @past_project.update_attributes(past_project_params)
        format.html { redirect_to @past_project, notice: 'Past project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @past_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /past_projects/1
  # DELETE /past_projects/1.json
  def destroy
    @past_project = PastProject.find(params[:id])
    @past_project.destroy

    respond_to do |format|
      format.html { redirect_to past_projects_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def past_project_params
      params.require(:past_project).permit()
    end
end
