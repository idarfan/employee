class StudentWeeklyusageshipsController < ApplicationController
  # GET /student_weeklyusageships
  # GET /student_weeklyusageships.xml
  def index
    @student_weeklyusageships = StudentWeeklyusageship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_weeklyusageships }
    end
  end

  # GET /student_weeklyusageships/1
  # GET /student_weeklyusageships/1.xml
  def show
    @student_weeklyusageship = StudentWeeklyusageship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_weeklyusageship }
    end
  end

  # GET /student_weeklyusageships/new
  # GET /student_weeklyusageships/new.xml
  def new
    @student_weeklyusageship = StudentWeeklyusageship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_weeklyusageship }
    end
  end

  # GET /student_weeklyusageships/1/edit
  def edit
    @student_weeklyusageship = StudentWeeklyusageship.find(params[:id])
  end

  # POST /student_weeklyusageships
  # POST /student_weeklyusageships.xml
  def create
    @student_weeklyusageship = StudentWeeklyusageship.new(params[:student_weeklyusageship])

    respond_to do |format|
      if @student_weeklyusageship.save
        format.html { redirect_to(@student_weeklyusageship, :notice => 'Student weeklyusageship was successfully created.') }
        format.xml  { render :xml => @student_weeklyusageship, :status => :created, :location => @student_weeklyusageship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_weeklyusageship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_weeklyusageships/1
  # PUT /student_weeklyusageships/1.xml
  def update
    @student_weeklyusageship = StudentWeeklyusageship.find(params[:id])

    respond_to do |format|
      if @student_weeklyusageship.update_attributes(params[:student_weeklyusageship])
        format.html { redirect_to(@student_weeklyusageship, :notice => 'Student weeklyusageship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_weeklyusageship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_weeklyusageships/1
  # DELETE /student_weeklyusageships/1.xml
  def destroy
    @student_weeklyusageship = StudentWeeklyusageship.find(params[:id])
    @student_weeklyusageship.destroy

    respond_to do |format|
      format.html { redirect_to(student_weeklyusageships_url) }
      format.xml  { head :ok }
    end
  end
end
