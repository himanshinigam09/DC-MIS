class DcMembersController < ApplicationController
 #before_filter :authorize
  # GET /dc_members
  # GET /dc_members.json
  layout "index", :only => [:index]
  def index
    @dc_members = DcMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dc_members }
    end
  end

  # GET /dc_members/1
  # GET /dc_members/1.json
  def show
    @dc_member = DcMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dc_member }
    end
  end

  # GET /dc_members/new
  # GET /dc_members/new.json
  def new
    @dc_member = DcMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dc_member }
    end
  end

  # GET /dc_members/1/edit
  def edit
    @dc_member = DcMember.find(params[:id])
  end

  # POST /dc_members
  # POST /dc_members.json
  def create
    @dc_member = DcMember.new(params[:dc_member])
  
    respond_to do |format|
      if @dc_member.save
        #format.html { redirect_to @dc_member, notice: 'Dc member was successfully created.' }
        #format.json { render json: @dc_member, status: :created, location: @dc_member }
        format.html  { redirect_to(@dc_member,
                    :notice => 'DC member was successfully created.') }
      format.json  { render :json => @dc_member,
                    :status => :created, :location => @dc_member }
      else
        format.html { render action: "new" }
        format.json { render json: @dc_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dc_members/1
  # PUT /dc_members/1.json
  def update
    @dc_member = DcMember.find(params[:id])

    respond_to do |format|
      if @dc_member.update_attributes(params[:dc_member])
        format.html { redirect_to @dc_member, notice: 'Dc member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dc_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dc_members/1
  # DELETE /dc_members/1.json
  def destroy
    @dc_member = DcMember.find(params[:id])
    @dc_member.destroy

    respond_to do |format|
      format.html { redirect_to dc_members_url }
      format.json { head :no_content }
    end
  end
end
