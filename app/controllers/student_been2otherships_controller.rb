class StudentBeen2othershipsController < ApplicationController
  # GET /student_been2otherships
  # GET /student_been2otherships.xml
  def index
    @student_been2otherships = StudentBeen2othership.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_been2otherships }
    end
  end

  # GET /student_been2otherships/1
  # GET /student_been2otherships/1.xml
  def show
    @student_been2othership = StudentBeen2othership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_been2othership }
    end
  end

  # GET /student_been2otherships/new
  # GET /student_been2otherships/new.xml
  def new
    @student_been2othership = StudentBeen2othership.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_been2othership }
    end
  end

  # GET /student_been2otherships/1/edit
  def edit
    @student_been2othership = StudentBeen2othership.find(params[:id])
  end

  # POST /student_been2otherships
  # POST /student_been2otherships.xml
  def create
    @student_been2othership = StudentBeen2othership.new(params[:student_been2othership])

    respond_to do |format|
      if @student_been2othership.save
        format.html { redirect_to(@student_been2othership, :notice => 'Student been2othership was successfully created.') }
        format.xml  { render :xml => @student_been2othership, :status => :created, :location => @student_been2othership }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_been2othership.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_been2otherships/1
  # PUT /student_been2otherships/1.xml
  def update
    @student_been2othership = StudentBeen2othership.find(params[:id])

    respond_to do |format|
      if @student_been2othership.update_attributes(params[:student_been2othership])
        format.html { redirect_to(@student_been2othership, :notice => 'Student been2othership was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_been2othership.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_been2otherships/1
  # DELETE /student_been2otherships/1.xml
  def destroy
    @student_been2othership = StudentBeen2othership.find(params[:id])
    @student_been2othership.destroy

    respond_to do |format|
      format.html { redirect_to(student_been2otherships_url) }
      format.xml  { head :ok }
    end
  end
end
