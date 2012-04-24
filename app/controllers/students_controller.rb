class StudentsController < ApplicationController
  # GET /students
  # GET /students.xml
  def index
    #@students = Student.all
    @students = Student.paginate(:page => params[:page], :per_page => 5)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @students }
    end
  end

  # GET /students/1
  # GET /students/1.xml
  def show
    @regeds = Reged.all
    @graduateds = Graduated.all
    @notices = Notice.all
    @been2others = Been2other.all
    @incomelevels = Incomelevel.all
    @mostneeds = Mostneed.all
    @howuknowus = Howuknowu.all
    @howcanimproves = Howcanimprove.all
    @frequentmags = Frequentmag.all
    @weeklyusages = Weeklyusage.all
    @mostimportchoices = Mostimportchoice.all    
    @whylearns = Whylearn.all
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/new
  # GET /students/new.xml
  def new
    @regeds = Reged.all
    @graduateds = Graduated.all
    @notices = Notice.all
    @been2others = Been2other.all
    @incomelevels = Incomelevel.all
    @mostneeds = Mostneed.all
    @howuknowus = Howuknowu.all
    @howcanimproves = Howcanimprove.all
    @frequentmags = Frequentmag.all
    @weeklyusages = Weeklyusage.all
    @mostimportchoices = Mostimportchoice.all
    @whylearns = Whylearn.all
    @student = Student.new     

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/1/edit
  def edit
    @regeds = Reged.all
    @graduateds = Graduated.all
    @notices = Notice.all
    @been2others = Been2other.all
    @incomelevels = Incomelevel.all
    @mostneeds = Mostneed.all
    @howuknowus = Howuknowu.all
    @howcanimproves = Howcanimprove.all
    @frequentmags = Frequentmag.all
    @weeklyusages = Weeklyusage.all
    @mostimportchoices = Mostimportchoice.all    
    @whylearns = Whylearn.all
    @student = Student.find(params[:id])
  end

  # POST /students
  # POST /students.xml
  def create
    @regeds = Reged.all
    @graduateds = Graduated.all
    @notices = Notice.all
    @been2others = Been2other.all
    @incomelevels = Incomelevel.all
    @mostneeds = Mostneed.all
    @howuknowus = Howuknowu.all
    @howcanimproves = Howcanimprove.all
    @frequentmags = Frequentmag.all
    @weeklyusages = Weeklyusage.all
    @mostimportchoices = Mostimportchoice.all 
    @whylearns = Whylearn.all    
    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to(@student, :notice => 'Student was successfully created.') }
        format.xml  { render :xml => @student, :status => :created, :location => @student }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.xml
  def update
    @regeds = Reged.all
    @graduateds = Graduated.all
    @notices = Notice.all
    @been2others = Been2other.all
    @incomelevels = Incomelevel.all
    @mostneeds = Mostneed.all
    @howuknowus = Howuknowu.all
    @howcanimproves = Howcanimprove.all
    @frequentmags = Frequentmag.all
    @weeklyusages = Weeklyusage.all
    @mostimportchoices = Mostimportchoice.all 
    @whylearns = Whylearn.all    
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to(@student, :notice => 'Student was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.xml
  def destroy
    return unless user_level
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to(students_url) }
      format.xml  { head :ok }
    end
  end
  
  #加入學歷的選項
  def money
    @level = Incomelevel.all.map{|im|[im.reason_desc , im.id]}
    @grat = Graduated.all.map{|gr|[gr.reason_desc , gr.id]}
    render :layout =>"test_layout"
  end

  def show_money
    @graduateds = Graduated.all
    start_at = Time.parse(params[:start_at])
    end_at = Time.parse(params[:end_at])
    level = params[:level].to_i
    grat = params[:grat].to_i
    @students = Student.all(:from => "student_incomelevelships AS si, AND student_graduatedships AS sg" ,
      :conditions => ["si.incomelevel_id = ? AND sg.graduated_id = ?", level , grat] ,
      :joins => "INNER JOIN
        students ON (students.id = si.student_id AND students.id = sg.student_id AND
        students.created_at BETWEEN 
        DATE('#{start_at.strftime("%Y/%m/%d")}') AND
        DATE('#{end_at.strftime("%Y/%m/%d")}'))")
  end
  #  @Student.includes(:whylearns, :student_incomelevelships).where
  #  ("whylearns.reason_desc = ?",  "工作需要")
  #  .where("student_incomelevelships.incomelevel_id = ?",
  #    params[:level]).where("students.created_at between ? and ?",
  #    params[:start_at], params[:end_at])
  #end
 
  def student_id_check
    if Student.count(:conditions => ["student_id = ?" , params[:student][:student_id]]) == 0
      render(:json => true.to_json)
    else
      render(:json => false.to_json)
    end
  end
  #需求：1.輸入開始時間結束時間
  #2.顯示結果數量
end