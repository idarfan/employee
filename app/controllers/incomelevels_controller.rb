class IncomelevelsController < ApplicationController
  # GET /incomelevels
  # GET /incomelevels.xml
  def index
    @incomelevels = Incomelevel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @incomelevels }
    end
  end

  # GET /incomelevels/1
  # GET /incomelevels/1.xml
  def show
    @incomelevel = Incomelevel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @incomelevel }
    end
  end

  # GET /incomelevels/new
  # GET /incomelevels/new.xml
  def new
    @incomelevel = Incomelevel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @incomelevel }
    end
  end

  # GET /incomelevels/1/edit
  def edit
    @incomelevel = Incomelevel.find(params[:id])
  end

  # POST /incomelevels
  # POST /incomelevels.xml
  def create
    @incomelevel = Incomelevel.new(params[:incomelevel])

    respond_to do |format|
      if @incomelevel.save
        format.html { redirect_to(@incomelevel, :notice => 'Incomelevel was successfully created.') }
        format.xml  { render :xml => @incomelevel, :status => :created, :location => @incomelevel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @incomelevel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /incomelevels/1
  # PUT /incomelevels/1.xml
  def update
    @incomelevel = Incomelevel.find(params[:id])

    respond_to do |format|
      if @incomelevel.update_attributes(params[:incomelevel])
        format.html { redirect_to(@incomelevel, :notice => 'Incomelevel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @incomelevel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /incomelevels/1
  # DELETE /incomelevels/1.xml
  def destroy
    @incomelevel = Incomelevel.find(params[:id])
    @incomelevel.destroy

    respond_to do |format|
      format.html { redirect_to(incomelevels_url) }
      format.xml  { head :ok }
    end
  end
end
