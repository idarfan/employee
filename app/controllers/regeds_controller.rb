class RegedsController < ApplicationController
  # GET /regeds
  # GET /regeds.xml
  def index
    @regeds = Reged.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @regeds }
    end
  end

  # GET /regeds/1
  # GET /regeds/1.xml
  def show
    @reged = Reged.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reged }
    end
  end

  # GET /regeds/new
  # GET /regeds/new.xml
  def new
    @reged = Reged.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reged }
    end
  end

  # GET /regeds/1/edit
  def edit
    @reged = Reged.find(params[:id])
  end

  # POST /regeds
  # POST /regeds.xml
  def create
    @reged = Reged.new(params[:reged])

    respond_to do |format|
      if @reged.save
        format.html { redirect_to(@reged, :notice => 'Reged was successfully created.') }
        format.xml  { render :xml => @reged, :status => :created, :location => @reged }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reged.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /regeds/1
  # PUT /regeds/1.xml
  def update
    @reged = Reged.find(params[:id])

    respond_to do |format|
      if @reged.update_attributes(params[:reged])
        format.html { redirect_to(@reged, :notice => 'Reged was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reged.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /regeds/1
  # DELETE /regeds/1.xml
  def destroy
    @reged = Reged.find(params[:id])
    @reged.destroy

    respond_to do |format|
      format.html { redirect_to(regeds_url) }
      format.xml  { head :ok }
    end
  end
end
