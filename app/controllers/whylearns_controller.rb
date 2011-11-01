class WhylearnsController < ApplicationController
  # GET /whylearns
  # GET /whylearns.xml
  def index
    @whylearns = Whylearn.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @whylearns }
    end
  end

  # GET /whylearns/1
  # GET /whylearns/1.xml
  def show
    @whylearn = Whylearn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @whylearn }
    end
  end

  # GET /whylearns/new
  # GET /whylearns/new.xml
  def new
    @whylearn = Whylearn.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @whylearn }
    end
  end

  # GET /whylearns/1/edit
  def edit
    @whylearn = Whylearn.find(params[:id])
  end

  # POST /whylearns
  # POST /whylearns.xml
  def create
    @whylearn = Whylearn.new(params[:whylearn])

    respond_to do |format|
      if @whylearn.save
        format.html { redirect_to(@whylearn, :notice => 'Whylearn was successfully created.') }
        format.xml  { render :xml => @whylearn, :status => :created, :location => @whylearn }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @whylearn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /whylearns/1
  # PUT /whylearns/1.xml
  def update
    @whylearn = Whylearn.find(params[:id])

    respond_to do |format|
      if @whylearn.update_attributes(params[:whylearn])
        format.html { redirect_to(@whylearn, :notice => 'Whylearn was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @whylearn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /whylearns/1
  # DELETE /whylearns/1.xml
  def destroy
    @whylearn = Whylearn.find(params[:id])
    @whylearn.destroy

    respond_to do |format|
      format.html { redirect_to(whylearns_url) }
      format.xml  { head :ok }
    end
  end
end
