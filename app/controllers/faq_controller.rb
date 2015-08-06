class FaqController < ApplicationController
<<<<<<< HEAD
def index
    @faq = Faq.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @faq }
    end
  end

  # GET /dcs/1
  # GET /dcs/1.json
  
=======
layout "index", :only => [:index]
def index
end
>>>>>>> fe87f00a8436fe8680b5eb15c11aaf7da60113f9
end
