class StaffloginsController < ApplicationController
  # GET /stafflogins
  # GET /stafflogins.xml
  def index
    @stafflogins = Stafflogin.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stafflogins }
    end
  end

  # GET /stafflogins/1
  # GET /stafflogins/1.xml
  def show
    @stafflogin = Stafflogin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stafflogin }
    end
  end

  # GET /stafflogins/new
  # GET /stafflogins/new.xml
  def new
    @stafflogin = Stafflogin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stafflogin }
    end
  end

  # GET /stafflogins/1/edit
  def edit
    @stafflogin = Stafflogin.find(params[:id])
  end

  # POST /stafflogins
  # POST /stafflogins.xml
  def create
    @stafflogin = Stafflogin.new(params[:stafflogin])

    respond_to do |format|
      if @stafflogin.save
        format.html { redirect_to(@stafflogin, :notice => 'Stafflogin was successfully created.') }
        format.xml  { render :xml => @stafflogin, :status => :created, :location => @stafflogin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @stafflogin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stafflogins/1
  # PUT /stafflogins/1.xml
  def update
    @stafflogin = Stafflogin.find(params[:id])

    respond_to do |format|
      if @stafflogin.update_attributes(params[:stafflogin])
        format.html { redirect_to(@stafflogin, :notice => 'Stafflogin was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @stafflogin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stafflogins/1
  # DELETE /stafflogins/1.xml
  def destroy
    return unless user_level
    @stafflogin = Stafflogin.find(params[:id])
    @stafflogin.destroy

    respond_to do |format|
      format.html { redirect_to(stafflogins_url) }
      format.xml  { head :ok }
    end
  end
  def login
    
  end
  def stafflogin   
    name = params[:name]
    password = params[:password]
    user = Stafflogin.find_use_password(name , password)
    if user
      session[:user_id] = user.id
    else
      #登入錯誤
    end
    redirect_to :controller => "students" , :action => "index"
  end
  def stafflogout
    session[:user_id] = nil
    redirect_to :controller => "students" , :action => "index"
  end
end
