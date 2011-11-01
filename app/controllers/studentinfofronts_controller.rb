class StudentinfofrontsController < ApplicationController
  # GET /studentinfofronts
  # GET /studentinfofronts.xml
  def index
    @studentinfos = Studentinfo.all
    @studentinfofronts = Studentinfofront.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @studentinfofronts }
    end
  end

  # GET /studentinfofronts/1
  # GET /studentinfofronts/1.xml
  def show
    @studentinfofront = Studentinfofront.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @studentinfofront }
    end
  end

  # GET /studentinfofronts/new
  # GET /studentinfofronts/new.xml
  def new    
    @studentinfofront = Studentinfofront.new
  
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @studentinfofront }
    end
  end

  # GET /studentinfofronts/1/edit
  def edit
    @studentinfofront = Studentinfofront.find(params[:id])
  end

  # POST /studentinfofronts
  # POST /studentinfofronts.xml
  def create
    @studentinfos = Studentinfo.all
    @studentinfofront = Studentinfofront.new(params[:studentinfofront])    

    respond_to do |format|
      if @studentinfofront.save
        #format.html { redirect_to(@studentinfofront, :notice => 'Studentinfofront was successfully created.') }
        format.html {redirect_to new_studentinfo_url( :studentinfofront_id => @studentinfofront.id )}
        format.xml  { render :xml => @studentinfofront, :status => :created, :location => @studentinfofront }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @studentinfofront.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /studentinfofronts/1
  # PUT /studentinfofronts/1.xml
  def update
    @studentinfofront = Studentinfofront.find(params[:id])

    respond_to do |format|
      if @studentinfofront.update_attributes(params[:studentinfofront])
        format.html { redirect_to(@studentinfofront, :notice => 'Studentinfofront was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @studentinfofront.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /studentinfofronts/1
  # DELETE /studentinfofronts/1.xml
  def destroy
    @studentinfofront = Studentinfofront.find(params[:id])
    @studentinfofront.destroy

    respond_to do |format|
      format.html { redirect_to(studentinfofronts_url) }
      format.xml  { head :ok }
    end
  end
end
