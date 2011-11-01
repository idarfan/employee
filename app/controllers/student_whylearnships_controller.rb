class StudentWhylearnshipsController < ApplicationController
  # GET /student_whylearnships
  # GET /student_whylearnships.xml
  def index
    @student_whylearnships = StudentWhylearnship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_whylearnships }
    end
  end

  # GET /student_whylearnships/1
  # GET /student_whylearnships/1.xml
  def show
    @student_whylearnship = StudentWhylearnship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_whylearnship }
    end
  end

  # GET /student_whylearnships/new
  # GET /student_whylearnships/new.xml
  def new
    @student_whylearnship = StudentWhylearnship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_whylearnship }
    end
  end

  # GET /student_whylearnships/1/edit
  def edit
    @student_whylearnship = StudentWhylearnship.find(params[:id])
  end

  # POST /student_whylearnships
  # POST /student_whylearnships.xml
  def create
    @student_whylearnship = StudentWhylearnship.new(params[:student_whylearnship])

    respond_to do |format|
      if @student_whylearnship.save
        format.html { redirect_to(@student_whylearnship, :notice => 'Student whylearnship was successfully created.') }
        format.xml  { render :xml => @student_whylearnship, :status => :created, :location => @student_whylearnship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_whylearnship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_whylearnships/1
  # PUT /student_whylearnships/1.xml
  def update
    @student_whylearnship = StudentWhylearnship.find(params[:id])

    respond_to do |format|
      if @student_whylearnship.update_attributes(params[:student_whylearnship])
        format.html { redirect_to(@student_whylearnship, :notice => 'Student whylearnship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_whylearnship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_whylearnships/1
  # DELETE /student_whylearnships/1.xml
  def destroy
    @student_whylearnship = StudentWhylearnship.find(params[:id])
    @student_whylearnship.destroy

    respond_to do |format|
      format.html { redirect_to(student_whylearnships_url) }
      format.xml  { head :ok }
    end
  end
end
