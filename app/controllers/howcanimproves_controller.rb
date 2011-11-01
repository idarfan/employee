class HowcanimprovesController < ApplicationController
  # GET /howcanimproves
  # GET /howcanimproves.xml
  def index
    @howcanimproves = Howcanimprove.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @howcanimproves }
    end
  end

  # GET /howcanimproves/1
  # GET /howcanimproves/1.xml
  def show
    @howcanimprofe = Howcanimprove.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @howcanimprofe }
    end
  end

  # GET /howcanimproves/new
  # GET /howcanimproves/new.xml
  def new
    @howcanimprofe = Howcanimprove.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @howcanimprofe }
    end
  end

  # GET /howcanimproves/1/edit
  def edit
    @howcanimprofe = Howcanimprove.find(params[:id])
  end

  # POST /howcanimproves
  # POST /howcanimproves.xml
  def create
    @howcanimprofe = Howcanimprove.new(params[:howcanimprofe])

    respond_to do |format|
      if @howcanimprofe.save
        format.html { redirect_to(@howcanimprofe, :notice => 'Howcanimprove was successfully created.') }
        format.xml  { render :xml => @howcanimprofe, :status => :created, :location => @howcanimprofe }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @howcanimprofe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /howcanimproves/1
  # PUT /howcanimproves/1.xml
  def update
    @howcanimprofe = Howcanimprove.find(params[:id])

    respond_to do |format|
      if @howcanimprofe.update_attributes(params[:howcanimprofe])
        format.html { redirect_to(@howcanimprofe, :notice => 'Howcanimprove was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @howcanimprofe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /howcanimproves/1
  # DELETE /howcanimproves/1.xml
  def destroy
    @howcanimprofe = Howcanimprove.find(params[:id])
    @howcanimprofe.destroy

    respond_to do |format|
      format.html { redirect_to(howcanimproves_url) }
      format.xml  { head :ok }
    end
  end
end
