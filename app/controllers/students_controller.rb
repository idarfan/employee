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
    @level = Incomelevel.all.map{|im|[im.reason_desc , im.id]}    #test ok by rails c
    @howuknowu = Howuknowu.all.map{|sh|[sh.reason_desc , sh.id]}  #test ok by rails c 
    @whylearn = Whylearn.all.map{|sw|[sw.reason_desc , sw.id]}    #test ok by rails c
    render :layout =>"test_layout"
  end

  def show_money
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
    start_at = Time.parse(params[:start_at])
    end_at = Time.parse(params[:end_at])
    #level = params[:level].to_i
    #howuknowu = params[:howuknowu].to_i
    #whylearn = params[:whylearn].to_i
    @incomes_ids = params['income_ids[]'].map{|i|i.to_i > 0 ? i.to_i : nil}.compact    
    @students = Student.from('students AS s').joins("
    INNER JOIN student_incomes AS si ON si.student_id = s.id AND si.income_id IN (#{@incomes_ids.join(',')})
    INNER JOIN student_howyouknowus AS sh ON sh.student_id = s.id AND sh.howyouknowus_id IN (#{@howuknowus_ids.join(',')})
    INNER JOIN student_whyyoulearn AS sw ON sw.student_id = s.id AND sw.whyyoulearn_id IN (#{@whyulearn_ids.join(',')})  
    INNER JOIN students ON (students.id = si.student_id AND 
        students.created_at BETWEEN 
        DATE('#{start_at.strftime("%Y/%m/%d")}') AND
        DATE('#{end_at.strftime("%Y/%m/%d")}'))
   ")  
  end  
 
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