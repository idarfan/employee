class MostimportchoicesController < ApplicationController
  # GET /mostimportchoices
  # GET /mostimportchoices.xml
  def index
    @mostimportchoices = Mostimportchoice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mostimportchoices }
    end
  end

  # GET /mostimportchoices/1
  # GET /mostimportchoices/1.xml
  def show
    @mostimportchoice = Mostimportchoice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mostimportchoice }
    end
  end

  # GET /mostimportchoices/new
  # GET /mostimportchoices/new.xml
  def new
    @mostimportchoice = Mostimportchoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mostimportchoice }
    end
  end

  # GET /mostimportchoices/1/edit
  def edit
    @mostimportchoice = Mostimportchoice.find(params[:id])
  end

  # POST /mostimportchoices
  # POST /mostimportchoices.xml
  def create
    @mostimportchoice = Mostimportchoice.new(params[:mostimportchoice])

    respond_to do |format|
      if @mostimportchoice.save
        format.html { redirect_to(@mostimportchoice, :notice => 'Mostimportchoice was successfully created.') }
        format.xml  { render :xml => @mostimportchoice, :status => :created, :location => @mostimportchoice }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mostimportchoice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mostimportchoices/1
  # PUT /mostimportchoices/1.xml
  def update
    @mostimportchoice = Mostimportchoice.find(params[:id])

    respond_to do |format|
      if @mostimportchoice.update_attributes(params[:mostimportchoice])
        format.html { redirect_to(@mostimportchoice, :notice => 'Mostimportchoice was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mostimportchoice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mostimportchoices/1
  # DELETE /mostimportchoices/1.xml
  def destroy
    @mostimportchoice = Mostimportchoice.find(params[:id])
    @mostimportchoice.destroy

    respond_to do |format|
      format.html { redirect_to(mostimportchoices_url) }
      format.xml  { head :ok }
    end
  end
end
