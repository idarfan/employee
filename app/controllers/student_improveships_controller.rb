class StudentImproveshipsController < ApplicationController
  # GET /student_improveships
  # GET /student_improveships.xml
  def index
    @student_improveships = StudentImproveship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_improveships }
    end
  end

  # GET /student_improveships/1
  # GET /student_improveships/1.xml
  def show
    @student_improveship = StudentImproveship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_improveship }
    end
  end

  # GET /student_improveships/new
  # GET /student_improveships/new.xml
  def new
    @student_improveship = StudentImproveship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_improveship }
    end
  end

  # GET /student_improveships/1/edit
  def edit
    @student_improveship = StudentImproveship.find(params[:id])
  end

  # POST /student_improveships
  # POST /student_improveships.xml
  def create
    @student_improveship = StudentImproveship.new(params[:student_improveship])

    respond_to do |format|
      if @student_improveship.save
        format.html { redirect_to(@student_improveship, :notice => 'Student improveship was successfully created.') }
        format.xml  { render :xml => @student_improveship, :status => :created, :location => @student_improveship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_improveship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_improveships/1
  # PUT /student_improveships/1.xml
  def update
    @student_improveship = StudentImproveship.find(params[:id])

    respond_to do |format|
      if @student_improveship.update_attributes(params[:student_improveship])
        format.html { redirect_to(@student_improveship, :notice => 'Student improveship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_improveship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_improveships/1
  # DELETE /student_improveships/1.xml
  def destroy
    @student_improveship = StudentImproveship.find(params[:id])
    @student_improveship.destroy

    respond_to do |format|
      format.html { redirect_to(student_improveships_url) }
      format.xml  { head :ok }
    end
  end
end
