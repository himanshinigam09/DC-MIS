class DailyLogsController < ApplicationController
  # GET /daily_logs
  # GET /daily_logs.json
  layout "index", :only => [:index]
  def index
    @daily_logs = DailyLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_logs }
    end
  end

  # GET /daily_logs/1
  # GET /daily_logs/1.json
  def show
    @daily_log = DailyLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_log }
    end
  end

  # GET /daily_logs/new
  # GET /daily_logs/new.json
  def new
    @daily_log = DailyLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_log }
    end
  end

  # GET /daily_logs/1/edit
  def edit
    @daily_log = DailyLog.find(params[:id])
  end

  # POST /daily_logs
  # POST /daily_logs.json
  def create
    @daily_log = DailyLog.new(daily_log_params)

    respond_to do |format|
      if @daily_log.save
        format.html { redirect_to @daily_log, notice: 'Daily log was successfully created.' }
        format.json { render json: @daily_log, status: :created, location: @daily_log }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_logs/1
  # PATCH/PUT /daily_logs/1.json
  def update
    @daily_log = DailyLog.find(params[:id])

    respond_to do |format|
      if @daily_log.update_attributes(daily_log_params)
        format.html { redirect_to @daily_log, notice: 'Daily log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_logs/1
  # DELETE /daily_logs/1.json
  def destroy
    @daily_log = DailyLog.find(params[:id])
    @daily_log.destroy

    respond_to do |format|
      format.html { redirect_to daily_logs_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def daily_log_params
      params.require(:daily_log).permit(:date, :log, :remark)
    end
end
