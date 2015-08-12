class FaqController < ApplicationController

def index
    @faq = Faq.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @faq }
    end
  end

  # GET /dcs/1
  # GET /dcs/1.json
  

layout "index", :only => [:index]

end
