class StudentIncomelevelshipsController < ApplicationController
  # GET /student_incomelevelships
  # GET /student_incomelevelships.xml
  def index
    @student_incomelevelships = StudentIncomelevelship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_incomelevelships }
    end
  end

  # GET /student_incomelevelships/1
  # GET /student_incomelevelships/1.xml
  def show
    @student_incomelevelship = StudentIncomelevelship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_incomelevelship }
    end
  end

  # GET /student_incomelevelships/new
  # GET /student_incomelevelships/new.xml
  def new
    @student_incomelevelship = StudentIncomelevelship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_incomelevelship }
    end
  end

  # GET /student_incomelevelships/1/edit
  def edit
    @student_incomelevelship = StudentIncomelevelship.find(params[:id])
  end

  # POST /student_incomelevelships
  # POST /student_incomelevelships.xml
  def create
    @student_incomelevelship = StudentIncomelevelship.new(params[:student_incomelevelship])

    respond_to do |format|
      if @student_incomelevelship.save
        format.html { redirect_to(@student_incomelevelship, :notice => 'Student incomelevelship was successfully created.') }
        format.xml  { render :xml => @student_incomelevelship, :status => :created, :location => @student_incomelevelship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_incomelevelship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_incomelevelships/1
  # PUT /student_incomelevelships/1.xml
  def update
    @student_incomelevelship = StudentIncomelevelship.find(params[:id])

    respond_to do |format|
      if @student_incomelevelship.update_attributes(params[:student_incomelevelship])
        format.html { redirect_to(@student_incomelevelship, :notice => 'Student incomelevelship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_incomelevelship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_incomelevelships/1
  # DELETE /student_incomelevelships/1.xml
  def destroy
    @student_incomelevelship = StudentIncomelevelship.find(params[:id])
    @student_incomelevelship.destroy

    respond_to do |format|
      format.html { redirect_to(student_incomelevelships_url) }
      format.xml  { head :ok }
    end
  end
end
