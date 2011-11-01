class StudentGraduatedshipsController < ApplicationController
  # GET /student_graduatedships
  # GET /student_graduatedships.xml
  def index
    @student_graduatedships = StudentGraduatedship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_graduatedships }
    end
  end

  # GET /student_graduatedships/1
  # GET /student_graduatedships/1.xml
  def show
    @student_graduatedship = StudentGraduatedship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_graduatedship }
    end
  end

  # GET /student_graduatedships/new
  # GET /student_graduatedships/new.xml
  def new
    @student_graduatedship = StudentGraduatedship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_graduatedship }
    end
  end

  # GET /student_graduatedships/1/edit
  def edit
    @student_graduatedship = StudentGraduatedship.find(params[:id])
  end

  # POST /student_graduatedships
  # POST /student_graduatedships.xml
  def create
    @student_graduatedship = StudentGraduatedship.new(params[:student_graduatedship])

    respond_to do |format|
      if @student_graduatedship.save
        format.html { redirect_to(@student_graduatedship, :notice => 'Student graduatedship was successfully created.') }
        format.xml  { render :xml => @student_graduatedship, :status => :created, :location => @student_graduatedship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_graduatedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_graduatedships/1
  # PUT /student_graduatedships/1.xml
  def update
    @student_graduatedship = StudentGraduatedship.find(params[:id])

    respond_to do |format|
      if @student_graduatedship.update_attributes(params[:student_graduatedship])
        format.html { redirect_to(@student_graduatedship, :notice => 'Student graduatedship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_graduatedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_graduatedships/1
  # DELETE /student_graduatedships/1.xml
  def destroy
    @student_graduatedship = StudentGraduatedship.find(params[:id])
    @student_graduatedship.destroy

    respond_to do |format|
      format.html { redirect_to(student_graduatedships_url) }
      format.xml  { head :ok }
    end
  end
end
