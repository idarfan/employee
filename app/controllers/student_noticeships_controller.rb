class StudentNoticeshipsController < ApplicationController
  # GET /student_noticeships
  # GET /student_noticeships.xml
  def index
    @student_noticeships = StudentNoticeship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_noticeships }
    end
  end

  # GET /student_noticeships/1
  # GET /student_noticeships/1.xml
  def show
    @student_noticeship = StudentNoticeship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_noticeship }
    end
  end

  # GET /student_noticeships/new
  # GET /student_noticeships/new.xml
  def new
    @student_noticeship = StudentNoticeship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_noticeship }
    end
  end

  # GET /student_noticeships/1/edit
  def edit
    @student_noticeship = StudentNoticeship.find(params[:id])
  end

  # POST /student_noticeships
  # POST /student_noticeships.xml
  def create
    @student_noticeship = StudentNoticeship.new(params[:student_noticeship])

    respond_to do |format|
      if @student_noticeship.save
        format.html { redirect_to(@student_noticeship, :notice => 'Student noticeship was successfully created.') }
        format.xml  { render :xml => @student_noticeship, :status => :created, :location => @student_noticeship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_noticeship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_noticeships/1
  # PUT /student_noticeships/1.xml
  def update
    @student_noticeship = StudentNoticeship.find(params[:id])

    respond_to do |format|
      if @student_noticeship.update_attributes(params[:student_noticeship])
        format.html { redirect_to(@student_noticeship, :notice => 'Student noticeship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_noticeship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_noticeships/1
  # DELETE /student_noticeships/1.xml
  def destroy
    @student_noticeship = StudentNoticeship.find(params[:id])
    @student_noticeship.destroy

    respond_to do |format|
      format.html { redirect_to(student_noticeships_url) }
      format.xml  { head :ok }
    end
  end
end
