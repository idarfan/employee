class WeeklyusagesController < ApplicationController
  # GET /weeklyusages
  # GET /weeklyusages.xml
  def index
    @weeklyusages = Weeklyusage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @weeklyusages }
    end
  end

  # GET /weeklyusages/1
  # GET /weeklyusages/1.xml
  def show
    @weeklyusage = Weeklyusage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @weeklyusage }
    end
  end

  # GET /weeklyusages/new
  # GET /weeklyusages/new.xml
  def new
    @weeklyusage = Weeklyusage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @weeklyusage }
    end
  end

  # GET /weeklyusages/1/edit
  def edit
    @weeklyusage = Weeklyusage.find(params[:id])
  end

  # POST /weeklyusages
  # POST /weeklyusages.xml
  def create
    @weeklyusage = Weeklyusage.new(params[:weeklyusage])

    respond_to do |format|
      if @weeklyusage.save
        format.html { redirect_to(@weeklyusage, :notice => 'Weeklyusage was successfully created.') }
        format.xml  { render :xml => @weeklyusage, :status => :created, :location => @weeklyusage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @weeklyusage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /weeklyusages/1
  # PUT /weeklyusages/1.xml
  def update
    @weeklyusage = Weeklyusage.find(params[:id])

    respond_to do |format|
      if @weeklyusage.update_attributes(params[:weeklyusage])
        format.html { redirect_to(@weeklyusage, :notice => 'Weeklyusage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @weeklyusage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /weeklyusages/1
  # DELETE /weeklyusages/1.xml
  def destroy
    @weeklyusage = Weeklyusage.find(params[:id])
    @weeklyusage.destroy

    respond_to do |format|
      format.html { redirect_to(weeklyusages_url) }
      format.xml  { head :ok }
    end
  end
end
