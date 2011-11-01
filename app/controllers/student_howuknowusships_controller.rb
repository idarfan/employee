class StudentHowuknowusshipsController < ApplicationController
  # GET /student_howuknowusships
  # GET /student_howuknowusships.xml
  def index
    @student_howuknowusships = StudentHowuknowusship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_howuknowusships }
    end
  end

  # GET /student_howuknowusships/1
  # GET /student_howuknowusships/1.xml
  def show
    @student_howuknowusship = StudentHowuknowusship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_howuknowusship }
    end
  end

  # GET /student_howuknowusships/new
  # GET /student_howuknowusships/new.xml
  def new
    @student_howuknowusship = StudentHowuknowusship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_howuknowusship }
    end
  end

  # GET /student_howuknowusships/1/edit
  def edit
    @student_howuknowusship = StudentHowuknowusship.find(params[:id])
  end

  # POST /student_howuknowusships
  # POST /student_howuknowusships.xml
  def create
    @student_howuknowusship = StudentHowuknowusship.new(params[:student_howuknowusship])

    respond_to do |format|
      if @student_howuknowusship.save
        format.html { redirect_to(@student_howuknowusship, :notice => 'Student howuknowusship was successfully created.') }
        format.xml  { render :xml => @student_howuknowusship, :status => :created, :location => @student_howuknowusship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_howuknowusship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_howuknowusships/1
  # PUT /student_howuknowusships/1.xml
  def update
    @student_howuknowusship = StudentHowuknowusship.find(params[:id])

    respond_to do |format|
      if @student_howuknowusship.update_attributes(params[:student_howuknowusship])
        format.html { redirect_to(@student_howuknowusship, :notice => 'Student howuknowusship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_howuknowusship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_howuknowusships/1
  # DELETE /student_howuknowusships/1.xml
  def destroy
    @student_howuknowusship = StudentHowuknowusship.find(params[:id])
    @student_howuknowusship.destroy

    respond_to do |format|
      format.html { redirect_to(student_howuknowusships_url) }
      format.xml  { head :ok }
    end
  end
end
