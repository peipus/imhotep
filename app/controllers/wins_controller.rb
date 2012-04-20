class WinsController < ApplicationController

  before_filter :authenticate_user!

  # GET /wins
  # GET /wins.xml
  def index
    @wins = Win.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wins }
    end
  end

  # GET /wins/1
  # GET /wins/1.xml
  def show
    @win = Win.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @win }
    end
  end

  # GET /wins/new
  # GET /wins/new.xml
  def new
    @win = Win.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @win }
    end
  end

  # GET /wins/1/edit
  def edit
    @win = Win.find(params[:id])
  end

  # POST /wins
  # POST /wins.xml
  def create
    @win = Win.new(params[:win])

    respond_to do |format|
      if @win.save
        format.html { redirect_to wins_path }
        format.xml  { render :xml => @win, :status => :created, :location => @win }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @win.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wins/1
  # PUT /wins/1.xml
  def update
    @win = Win.find(params[:id])

    respond_to do |format|
      if @win.update_attributes(params[:win])
        format.html { redirect_to(@win, :notice => 'Win was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @win.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wins/1
  # DELETE /wins/1.xml
  def destroy
    @win = Win.find(params[:id])
    @win.destroy

    respond_to do |format|
      format.html { redirect_to(wins_url) }
      format.xml  { head :ok }
    end
  end
end
