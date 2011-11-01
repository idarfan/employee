class StudentMostneedshipsController < ApplicationController
  # GET /student_mostneedships
  # GET /student_mostneedships.xml
  def index
    @student_mostneedships = StudentMostneedship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_mostneedships }
    end
  end

  # GET /student_mostneedships/1
  # GET /student_mostneedships/1.xml
  def show
    @student_mostneedship = StudentMostneedship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_mostneedship }
    end
  end

  # GET /student_mostneedships/new
  # GET /student_mostneedships/new.xml
  def new
    @student_mostneedship = StudentMostneedship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_mostneedship }
    end
  end

  # GET /student_mostneedships/1/edit
  def edit
    @student_mostneedship = StudentMostneedship.find(params[:id])
  end

  # POST /student_mostneedships
  # POST /student_mostneedships.xml
  def create
    @student_mostneedship = StudentMostneedship.new(params[:student_mostneedship])

    respond_to do |format|
      if @student_mostneedship.save
        format.html { redirect_to(@student_mostneedship, :notice => 'Student mostneedship was successfully created.') }
        format.xml  { render :xml => @student_mostneedship, :status => :created, :location => @student_mostneedship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_mostneedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_mostneedships/1
  # PUT /student_mostneedships/1.xml
  def update
    @student_mostneedship = StudentMostneedship.find(params[:id])

    respond_to do |format|
      if @student_mostneedship.update_attributes(params[:student_mostneedship])
        format.html { redirect_to(@student_mostneedship, :notice => 'Student mostneedship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_mostneedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_mostneedships/1
  # DELETE /student_mostneedships/1.xml
  def destroy
    @student_mostneedship = StudentMostneedship.find(params[:id])
    @student_mostneedship.destroy

    respond_to do |format|
      format.html { redirect_to(student_mostneedships_url) }
      format.xml  { head :ok }
    end
  end
end
