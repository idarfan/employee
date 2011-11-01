class FrequentmagsController < ApplicationController
  # GET /frequentmags
  # GET /frequentmags.xml
  def index
    @frequentmags = Frequentmag.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @frequentmags }
    end
  end

  # GET /frequentmags/1
  # GET /frequentmags/1.xml
  def show
    @frequentmag = Frequentmag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @frequentmag }
    end
  end

  # GET /frequentmags/new
  # GET /frequentmags/new.xml
  def new
    @frequentmag = Frequentmag.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @frequentmag }
    end
  end

  # GET /frequentmags/1/edit
  def edit
    @frequentmag = Frequentmag.find(params[:id])
  end

  # POST /frequentmags
  # POST /frequentmags.xml
  def create
    @frequentmag = Frequentmag.new(params[:frequentmag])

    respond_to do |format|
      if @frequentmag.save
        format.html { redirect_to(@frequentmag, :notice => 'Frequentmag was successfully created.') }
        format.xml  { render :xml => @frequentmag, :status => :created, :location => @frequentmag }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @frequentmag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /frequentmags/1
  # PUT /frequentmags/1.xml
  def update
    @frequentmag = Frequentmag.find(params[:id])

    respond_to do |format|
      if @frequentmag.update_attributes(params[:frequentmag])
        format.html { redirect_to(@frequentmag, :notice => 'Frequentmag was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @frequentmag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /frequentmags/1
  # DELETE /frequentmags/1.xml
  def destroy
    @frequentmag = Frequentmag.find(params[:id])
    @frequentmag.destroy

    respond_to do |format|
      format.html { redirect_to(frequentmags_url) }
      format.xml  { head :ok }
    end
  end
end
