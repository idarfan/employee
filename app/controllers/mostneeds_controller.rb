class MostneedsController < ApplicationController
  # GET /mostneeds
  # GET /mostneeds.xml
  def index
    @mostneeds = Mostneed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mostneeds }
    end
  end

  # GET /mostneeds/1
  # GET /mostneeds/1.xml
  def show
    @mostneed = Mostneed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mostneed }
    end
  end

  # GET /mostneeds/new
  # GET /mostneeds/new.xml
  def new
    @mostneed = Mostneed.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mostneed }
    end
  end

  # GET /mostneeds/1/edit
  def edit
    @mostneed = Mostneed.find(params[:id])
  end

  # POST /mostneeds
  # POST /mostneeds.xml
  def create
    @mostneed = Mostneed.new(params[:mostneed])

    respond_to do |format|
      if @mostneed.save
        format.html { redirect_to(@mostneed, :notice => 'Mostneed was successfully created.') }
        format.xml  { render :xml => @mostneed, :status => :created, :location => @mostneed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mostneed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mostneeds/1
  # PUT /mostneeds/1.xml
  def update
    @mostneed = Mostneed.find(params[:id])

    respond_to do |format|
      if @mostneed.update_attributes(params[:mostneed])
        format.html { redirect_to(@mostneed, :notice => 'Mostneed was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mostneed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mostneeds/1
  # DELETE /mostneeds/1.xml
  def destroy
    @mostneed = Mostneed.find(params[:id])
    @mostneed.destroy

    respond_to do |format|
      format.html { redirect_to(mostneeds_url) }
      format.xml  { head :ok }
    end
  end
end
