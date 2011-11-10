class StudentRegedshipsController < ApplicationController
  # GET /student_regedships
  # GET /student_regedships.xml
  def index
    @student_regedships = StudentRegedship.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_regedships }
    end
  end

  # GET /student_regedships/1
  # GET /student_regedships/1.xml
  def show
    @student_regedship = StudentRegedship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_regedship }
    end
  end

  # GET /student_regedships/new
  # GET /student_regedships/new.xml
  def new
    @student_regedship = StudentRegedship.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_regedship }
    end
  end

  # GET /student_regedships/1/edit
  def edit
    @student_regedship = StudentRegedship.find(params[:id])
  end

  # POST /student_regedships
  # POST /student_regedships.xml
  def create
    @student_regedship = StudentRegedship.new(params[:student_regedship])

    respond_to do |format|
      if @student_regedship.save
        format.html { redirect_to(@student_regedship, :notice => 'Student regedship was successfully created.') }
        format.xml  { render :xml => @student_regedship, :status => :created, :location => @student_regedship }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_regedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_regedships/1
  # PUT /student_regedships/1.xml
  def update
    @student_regedship = StudentRegedship.find(params[:id])

    respond_to do |format|
      if @student_regedship.update_attributes(params[:student_regedship])
        format.html { redirect_to(@student_regedship, :notice => 'Student regedship was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_regedship.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_regedships/1
  # DELETE /student_regedships/1.xml
  def destroy
    @student_regedship = StudentRegedship.find(params[:id])
    @student_regedship.destroy

    respond_to do |format|
      format.html { redirect_to(student_regedships_url) }
      format.xml  { head :ok }
    end
  end
end
