class Been2othersController < ApplicationController
  # GET /been2others
  # GET /been2others.xml
  def index
    @been2others = Been2other.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @been2others }
    end
  end

  # GET /been2others/1
  # GET /been2others/1.xml
  def show
    @been2other = Been2other.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @been2other }
    end
  end

  # GET /been2others/new
  # GET /been2others/new.xml
  def new
    @been2other = Been2other.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @been2other }
    end
  end

  # GET /been2others/1/edit
  def edit
    @been2other = Been2other.find(params[:id])
  end

  # POST /been2others
  # POST /been2others.xml
  def create
    @been2other = Been2other.new(params[:been2other])

    respond_to do |format|
      if @been2other.save
        format.html { redirect_to(@been2other, :notice => 'Been2other was successfully created.') }
        format.xml  { render :xml => @been2other, :status => :created, :location => @been2other }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @been2other.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /been2others/1
  # PUT /been2others/1.xml
  def update
    @been2other = Been2other.find(params[:id])

    respond_to do |format|
      if @been2other.update_attributes(params[:been2other])
        format.html { redirect_to(@been2other, :notice => 'Been2other was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @been2other.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /been2others/1
  # DELETE /been2others/1.xml
  def destroy
    @been2other = Been2other.find(params[:id])
    @been2other.destroy

    respond_to do |format|
      format.html { redirect_to(been2others_url) }
      format.xml  { head :ok }
    end
  end
end
