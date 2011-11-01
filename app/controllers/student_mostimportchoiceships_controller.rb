class StudentMostimportchoiceshipsController < ApplicationController
  # GET /student_mostimportchoiceships
  # GET /student_mostimportchoiceships.xml
  def index
    @student_mostimportchoiceships = StudentMostimportchoiceship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_mostimportchoiceships }
    end
  end

  # GET /student_mostimportchoiceships/1
  # GET /student_mostimportchoiceships/1.xml
  def show
    @student_mostimportchoiceship = StudentMostimportchoiceship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_mostimportchoiceship }
    end
  end

  # GET /student_mostimportchoiceships/new
  # GET /student_mostimportchoiceships/new.xml
  def new
    @student_mostimportchoiceship = StudentMostimportchoiceship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_mostimportchoiceship }
    end
  end

  # GET /student_mostimportchoiceships/1/edit
  def edit
    @student_mostimportchoiceship = StudentMostimportchoiceship.find(params[:id])
  end

  # POST /student_mostimportchoiceships
  # POST /student_mostimportchoiceships.xml
  def create
    @student_mostimportchoiceship = StudentMostimportchoiceship.new(params[:student_mostimportchoiceship])

    respond_to do |format|
      if @student_mostimportchoiceship.save
        format.html { redirect_to(@student_mostimportchoiceship, :notice => 'Student mostimportchoiceship was successfully created.') }
        format.xml  { render :xml => @student_mostimportchoiceship, :status => :created, :location => @student_mostimportchoiceship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_mostimportchoiceship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_mostimportchoiceships/1
  # PUT /student_mostimportchoiceships/1.xml
  def update
    @student_mostimportchoiceship = StudentMostimportchoiceship.find(params[:id])

    respond_to do |format|
      if @student_mostimportchoiceship.update_attributes(params[:student_mostimportchoiceship])
        format.html { redirect_to(@student_mostimportchoiceship, :notice => 'Student mostimportchoiceship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_mostimportchoiceship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_mostimportchoiceships/1
  # DELETE /student_mostimportchoiceships/1.xml
  def destroy
    @student_mostimportchoiceship = StudentMostimportchoiceship.find(params[:id])
    @student_mostimportchoiceship.destroy

    respond_to do |format|
      format.html { redirect_to(student_mostimportchoiceships_url) }
      format.xml  { head :ok }
    end
  end
end
