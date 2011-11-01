class StudentinfosController < ApplicationController
  # GET /studentinfos
  # GET /studentinfos.xml
  def index
    @studentinfos = Studentinfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @studentinfos }
    end
  end

  # GET /studentinfos/1
  # GET /studentinfos/1.xml
  def show
    @studentinfo = Studentinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @studentinfo }
    end
  end

  # GET /studentinfos/new
  # GET /studentinfos/new.xml
  def new
    @studentinfo = Studentinfo.new
    @whylearns = Whylearn.all
    @mostneeds = Mostneed.all
    @howucanimproves = Howucanimprove.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @studentinfo }
    end
  end

  # GET /studentinfos/1/edit
  def edit
    @studentinfo = Studentinfo.find(params[:id])
    @whylearns = Whylearn.all
    @mostneeds = Mostneed.all
    @howucanimproves = Howucanimprove.all
  end

  # POST /studentinfos
  # POST /studentinfos.xml
  def create
    @studentinfo = Studentinfo.new(params[:studentinfo])
    @whylearns = Whylearn.all
    @mostneeds = Mostneed.all
    @howucanimproves = Howucanimprove.all

    respond_to do |format|
      if @studentinfo.save
        format.html { redirect_to(@studentinfo, :notice => 'Studentinfo was successfully created.') }
        format.xml  { render :xml => @studentinfo, :status => :created, :location => @studentinfo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @studentinfo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /studentinfos/1
  # PUT /studentinfos/1.xml
  def update
    @studentinfo = Studentinfo.find(params[:id])  

    respond_to do |format|
      if @studentinfo.update_attributes(params[:studentinfo])
        format.html { redirect_to(@studentinfo, :notice => 'Studentinfo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @studentinfo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /studentinfos/1
  # DELETE /studentinfos/1.xml
  def destroy
    @studentinfo = Studentinfo.find(params[:id])
    @studentinfo.destroy

    respond_to do |format|
      format.html { redirect_to(studentinfos_url) }
      format.xml  { head :ok }
    end
  end
end