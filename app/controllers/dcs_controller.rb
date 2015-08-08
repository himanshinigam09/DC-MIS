class DcsController < ApplicationController
  # GET /dcs
  # GET /dcs.json
  layout "index", :only => [:index]
  def index
    @dcs = Dc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dcs }
    end
  end

  
end
  
