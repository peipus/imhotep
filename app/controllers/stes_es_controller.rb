class StesEsController < ApplicationController

  before_filter :authenticate_user!

  # GET /stes_es
  # GET /stes_es.xml
  def index
    @stes_es = StesE.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stes_es }
    end
  end

  # GET /stes_es/1
  # GET /stes_es/1.xml
  def show
    @stes_e = StesE.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stes_e }
    end
  end

  # GET /stes_es/new
  # GET /stes_es/new.xml
  def new
    @stes_e = StesE.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stes_e }
    end
  end

  # GET /stes_es/1/edit
  def edit
    @stes_e = StesE.find(params[:id])
  end

  # POST /stes_es
  # POST /stes_es.xml
  def create
    @stes_e = StesE.new(params[:stes_e])

    respond_to do |format|
      if @stes_e.save
        format.html { redirect_to edit_path }
        format.xml  { render :xml => @stes_e, :status => :created, :location => @stes_e }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @stes_e.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stes_es/1
  # PUT /stes_es/1.xml
  def update
    @stes_e = StesE.find(params[:id])

    respond_to do |format|
      if @stes_e.update_attributes(params[:stes_e])
        format.html { redirect_to :controller => :edit, :action => :index }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @stes_e.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stes_es/1
  # DELETE /stes_es/1.xml
  def destroy
    @stes_e = StesE.find(params[:id])
    @stes_e.destroy

    respond_to do |format|
      format.html { redirect_to(stes_es_url) }
      format.xml  { head :ok }
    end
  end
end
