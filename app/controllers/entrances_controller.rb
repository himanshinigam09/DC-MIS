class EntrancesController < ApplicationController
  # GET /entrances
  # GET /entrances.json
  def index
    @entrances = Entrance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entrances }
    end
  end

  # GET /entrances/1
  # GET /entrances/1.json
  def show
    @entrance = Entrance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entrance }
    end
  end

  # GET /entrances/new
  # GET /entrances/new.json
  def new
    @entrance = Entrance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entrance }
    end
  end

  # GET /entrances/1/edit
  def edit
    @entrance = Entrance.find(params[:id])
  end

  # POST /entrances
  # POST /entrances.json
  def create
    @entrance = Entrance.new(entrance_params)

    respond_to do |format|
      if @entrance.save
        format.html { redirect_to @entrance, notice: 'Entrance was successfully created.' }
        format.json { render json: @entrance, status: :created, location: @entrance }
      else
        format.html { render action: "new" }
        format.json { render json: @entrance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entrances/1
  # PATCH/PUT /entrances/1.json
  def update
    @entrance = Entrance.find(params[:id])

    respond_to do |format|
      if @entrance.update_attributes(entrance_params)
        format.html { redirect_to @entrance, notice: 'Entrance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entrance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrances/1
  # DELETE /entrances/1.json
  def destroy
    @entrance = Entrance.find(params[:id])
    @entrance.destroy

    respond_to do |format|
      format.html { redirect_to entrances_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def entrance_params
      params.require(:entrance).permit(:area_of_interest, :basic_skills, :blood_group, :cgpa, :country_code, :course, :current_address, :date_of_birth, :date_of_joining, :fathers_contact, :fathers_email, :fathers_name, :first_name, :gender, :github_id, :guardian_contact, :guardian_name, :last_name, :middle_name, :mobile_no, :online_courses, :percentage_10th, :percentage_12th, :permanent_address, :project_description, :project_duration, :project_name, :project_type, :reference, :reference_category, :school_name, :semester, :std_code, :student_email, :why_choose)
    end
end
