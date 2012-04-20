class ZalsController < ApplicationController

  before_filter :authenticate_user!

  # GET /zals
  # GET /zals.xml
  def index
    @zals = Zal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @zals }
    end
  end

  # GET /zals/1
  # GET /zals/1.xml
  def show
    @zal = Zal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @zal }
    end
  end

  # GET /zals/new
  # GET /zals/new.xml
  def new
    @zal = Zal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @zal }
    end
  end

  # GET /zals/1/edit
  def edit
    @zal = Zal.find(params[:id])
  end

  # POST /zals
  # POST /zals.xml
  def create
    @zal = Zal.new(params[:zal])

    respond_to do |format|
      if @zal.save
        format.html { redirect_to zals_path }
        format.xml  { render :xml => @zal, :status => :created, :location => @zal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @zal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /zals/1
  # PUT /zals/1.xml
  def update
    @zal = Zal.find(params[:id])

    respond_to do |format|
      if @zal.update_attributes(params[:zal])
        format.html { redirect_to(@zal, :notice => 'Zal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @zal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /zals/1
  # DELETE /zals/1.xml
  def destroy
    @zal = Zal.find(params[:id])
    @zal.destroy

    respond_to do |format|
      format.html { redirect_to(zals_url) }
      format.xml  { head :ok }
    end
  end
end
