class HowuknowusController < ApplicationController
  # GET /howuknowus
  # GET /howuknowus.xml
  def index
    @howuknowus = Howuknowu.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @howuknowus }
    end
  end

  # GET /howuknowus/1
  # GET /howuknowus/1.xml
  def show
    @howuknowu = Howuknowu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @howuknowu }
    end
  end

  # GET /howuknowus/new
  # GET /howuknowus/new.xml
  def new
    @howuknowu = Howuknowu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @howuknowu }
    end
  end

  # GET /howuknowus/1/edit
  def edit
    @howuknowu = Howuknowu.find(params[:id])
  end

  # POST /howuknowus
  # POST /howuknowus.xml
  def create
    @howuknowu = Howuknowu.new(params[:howuknowu])

    respond_to do |format|
      if @howuknowu.save
        format.html { redirect_to(@howuknowu, :notice => 'Howuknowu was successfully created.') }
        format.xml  { render :xml => @howuknowu, :status => :created, :location => @howuknowu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @howuknowu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /howuknowus/1
  # PUT /howuknowus/1.xml
  def update
    @howuknowu = Howuknowu.find(params[:id])

    respond_to do |format|
      if @howuknowu.update_attributes(params[:howuknowu])
        format.html { redirect_to(@howuknowu, :notice => 'Howuknowu was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @howuknowu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /howuknowus/1
  # DELETE /howuknowus/1.xml
  def destroy
    @howuknowu = Howuknowu.find(params[:id])
    @howuknowu.destroy

    respond_to do |format|
      format.html { redirect_to(howuknowus_url) }
      format.xml  { head :ok }
    end
  end
end
