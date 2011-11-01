class GraduatedsController < ApplicationController
  # GET /graduateds
  # GET /graduateds.xml
  def index
    @graduateds = Graduated.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @graduateds }
    end
  end

  # GET /graduateds/1
  # GET /graduateds/1.xml
  def show
    @graduated = Graduated.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @graduated }
    end
  end

  # GET /graduateds/new
  # GET /graduateds/new.xml
  def new
    @graduated = Graduated.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @graduated }
    end
  end

  # GET /graduateds/1/edit
  def edit
    @graduated = Graduated.find(params[:id])
  end

  # POST /graduateds
  # POST /graduateds.xml
  def create
    @graduated = Graduated.new(params[:graduated])

    respond_to do |format|
      if @graduated.save
        format.html { redirect_to(@graduated, :notice => 'Graduated was successfully created.') }
        format.xml  { render :xml => @graduated, :status => :created, :location => @graduated }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @graduated.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /graduateds/1
  # PUT /graduateds/1.xml
  def update
    @graduated = Graduated.find(params[:id])

    respond_to do |format|
      if @graduated.update_attributes(params[:graduated])
        format.html { redirect_to(@graduated, :notice => 'Graduated was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @graduated.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /graduateds/1
  # DELETE /graduateds/1.xml
  def destroy
    @graduated = Graduated.find(params[:id])
    @graduated.destroy

    respond_to do |format|
      format.html { redirect_to(graduateds_url) }
      format.xml  { head :ok }
    end
  end
end
