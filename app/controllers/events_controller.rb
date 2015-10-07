class EventsController < ApplicationController
  # GET /events
  # GET /events.json
    before_filter :zero_users_or_authenticated

  layout "index", :only => [:index]
  def index
    @events = Event.all

    @events = Event.search(params[:search]).order("topic").page(params[:page]).per(4)

   

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      #format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new

     


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)


    respond_to do |format|
      if @event.save 
        
          
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy

    @event = Event.find(params[:id]) 
    @event.destroy 

    respond_to do |format|
      format.html { redirect_to events_url }
    end

  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def event_params
      params.require(:event).permit(:date, :duration, :material_link, :organizer_id, :summary_link, :time, :topic, :type_of_event, :venue)
    end
def zero_users_or_authenticated
  unless User.count == 0 || current_user
    flash[:notice] = "You must be logged in to access this section"
    redirect_to login_path
    return false
  end
end
end
