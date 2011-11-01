class StudentFrequentmagshipsController < ApplicationController
  # GET /student_frequentmagships
  # GET /student_frequentmagships.xml
  def index
    @student_frequentmagships = StudentFrequentmagship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_frequentmagships }
    end
  end

  # GET /student_frequentmagships/1
  # GET /student_frequentmagships/1.xml
  def show
    @student_frequentmagship = StudentFrequentmagship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_frequentmagship }
    end
  end

  # GET /student_frequentmagships/new
  # GET /student_frequentmagships/new.xml
  def new
    @student_frequentmagship = StudentFrequentmagship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_frequentmagship }
    end
  end

  # GET /student_frequentmagships/1/edit
  def edit
    @student_frequentmagship = StudentFrequentmagship.find(params[:id])
  end

  # POST /student_frequentmagships
  # POST /student_frequentmagships.xml
  def create
    @student_frequentmagship = StudentFrequentmagship.new(params[:student_frequentmagship])

    respond_to do |format|
      if @student_frequentmagship.save
        format.html { redirect_to(@student_frequentmagship, :notice => 'Student frequentmagship was successfully created.') }
        format.xml  { render :xml => @student_frequentmagship, :status => :created, :location => @student_frequentmagship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_frequentmagship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_frequentmagships/1
  # PUT /student_frequentmagships/1.xml
  def update
    @student_frequentmagship = StudentFrequentmagship.find(params[:id])

    respond_to do |format|
      if @student_frequentmagship.update_attributes(params[:student_frequentmagship])
        format.html { redirect_to(@student_frequentmagship, :notice => 'Student frequentmagship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_frequentmagship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_frequentmagships/1
  # DELETE /student_frequentmagships/1.xml
  def destroy
    @student_frequentmagship = StudentFrequentmagship.find(params[:id])
    @student_frequentmagship.destroy

    respond_to do |format|
      format.html { redirect_to(student_frequentmagships_url) }
      format.xml  { head :ok }
    end
  end
end
