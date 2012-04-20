class DversController < ApplicationController

  before_filter :authenticate_user!

  # GET /dvers
  # GET /dvers.xml
  def index
    @dvers = Dver.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dvers }
    end
  end

  # GET /dvers/1
  # GET /dvers/1.xml
  def show
    @dver = Dver.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dver }
    end
  end

  # GET /dvers/new
  # GET /dvers/new.xml
  def new
    @dver = Dver.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dver }
    end
  end

  # GET /dvers/1/edit
  def edit
    @dver = Dver.find(params[:id])
  end

  # POST /dvers
  # POST /dvers.xml
  def create
    @dver = Dver.new(params[:dver])

    respond_to do |format|
      if @dver.save
        format.html { redirect_to dvers_path }
        format.xml  { render :xml => @dver, :status => :created, :location => @dver }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dver.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dvers/1
  # PUT /dvers/1.xml
  def update
    @dver = Dver.find(params[:id])

    respond_to do |format|
      if @dver.update_attributes(params[:dver])
        format.html { redirect_to dvers_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dver.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dvers/1
  # DELETE /dvers/1.xml
  def destroy
    @dver = Dver.find(params[:id])
    @dver.destroy

    respond_to do |format|
      format.html { redirect_to(dvers_url) }
      format.xml  { head :ok }
    end
  end
end
