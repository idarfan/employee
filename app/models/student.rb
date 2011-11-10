# encoding: utf-8
class Student < ActiveRecord::Base	
  #採用過濾器
  before_save :fix_cname
  #使用私有方法 fix_cname
  private
  def fix_cname
    self.cname = self.cname.gsub(/[\w\s\b\$[:punct:]]/ , '')
  end
  #
  has_many :student_whylearnship, :dependent => :destroy
  has_many :whylearn, :through => :student_whylearnship
  #您參加其他的英文進修課程嗎?
  has_many :student_been2othership, :dependent => :destroy
  has_many :been2other, :through => :student_been2othership  
  # 您最想加強的語文能力
  has_many :student_mostneedship, :dependent => :destroy
  has_many :mostneed, :through => :student_mostneedship
  #您覺得要如何才能學好英文
  has_many :student_improveship, :dependent => :destroy
  has_many :howcanimprove, :through => :student_improveship
  #您覺選擇語文中心時,什麼是最重要的
  has_many :student_mostimportchoiceship , :dependent => :destroy
  has_many :mostimportchoice , :through => :student_mostimportchoiceship  
  #您每週花多少時間學英文
  has_many :student_weeklyusageship, :dependent => :destroy
  has_many :weeklyusage, :through => :student_weeklyusageship
  #您都看些什麼雜誌跟網站
  has_many :student_frequentmagship, :dependent => :destroy
  has_many :frequentmag, :through => :student_frequentmagship
  #您是如何知道我們的
  has_many :student_howuknowusship, :dependent => :destroy
  has_many :howuknowu, :through => :student_howuknowusship
  #收入等級
  has_many :student_incomelevelship, :dependent => :destroy
  has_many :incomelevel, :through => :student_incomelevelship
  #notice
  has_many :student_noticeship, :dependent => :destroy
  has_many :notice, :through => :student_noticeship
  # attr_accessor :howcanimprove_ids
  has_many :student_graduatedship, :dependent => :destroy
  has_many :graduated, :through => :student_graduatedship
  #您是何學歷
  has_many :student_regedship, :dependent => :destroy
  has_many :reged, :through => :student_regedship
  #是否註冊上課
  #加入條件檢查式
  validate  :check_whylearn #檢查學習英文動機是否有勾選否則請填寫其它欄位
  validate :check_been2other #檢查有否在其他地方學習英文
  validate :check_mostneed #檢查您最想加強的英文能力
  validate :check_improve # 檢查您覺得要如何才能學好英文
  validate  :check_mostimportchoice #檢查選擇語言中心您認為最重要的
  validate :check_frequentmag # 檢查您看些什麼網站及雜誌
  validate :check_howtoknowus #您是如何知道我們的
  validate :check_incomelevel # 請輸入您的收入等級
  validate :check_graduated # 請輸入您的學歷
  
  def check_whylearn
    if self.whylearn_ids.empty? && self.whylearn_other.blank?
      errors[:其他學習動機] << " : 請您必須勾選上述的選項或至少填寫其他學習動機的欄位"
    end
  end 
     
  def check_been2other
    # if self.been2other_ids.empty? && self.been2other_other.blank?
    if self.been2other_ids.empty? || ( self.been2other_ids.include?(2) && self.been2other_other.blank? )
      errors[:您有否在其他地方學習英文] << " : 請您必須勾選上述的選項或至少填寫在其他地方學習英文的欄位"
    end
  end 
  
  def check_mostneed
    if self.mostneed_ids.empty? && self.mostneed_other.blank?
      errors[:您最想加強的語文能力] << " : 請您必須勾選上述的選項或至少填寫您最想加強的語文能力其它的欄位"
    end
  end 
  
  def check_improve
    if self.howcanimprove_ids.empty? && self.howcanimprove_other.blank?
      errors[:您覺得要如何才能加強英文] << " : 請您必須勾選上述的選項或至少填寫其他您認為能加強英文的方法"
    end
  end 
     
  def check_mostimportchoice
    if self.mostimportchoice_ids.empty? && self.mostimportchoice_other.blank?
      errors[:選擇語言中心您認為其他最重要的] << " : 請您必須勾選上述的選項或至少填寫其他選語言中心您認為最重要的欄位"
    end
  end 
  def check_frequentmag
    if self.frequentmag_ids.empty? && self.frequentmag_other.blank?
      errors[:其他您經常閱讀的雜誌或網站] << " : 請您必須勾選上述的選項或至少填寫其他經常閱讀的雜誌或網站"
    end
  end
  def check_howtoknowus
    if self.howuknowu_ids.empty? && self.howuknowus_other.blank?
      errors[:您是經由什麼管道知道我們的] << " : 請您必須勾選上述的選項或至少填寫其它知道我們的欄位"
    end
  end
  
  def check_incomelevel
    if self.incomelevel_ids.empty?
      errors[:請填寫您的收入等級] << " : 請您必須勾選上述的選項"
    end
  end 
  def check_graduated
    if self.graduated_ids.empty? && self.graduated_other.blank?
      errors[:請填寫您的學歷] << " : 請您必須勾選上述的選項或至少填寫其他學歷的欄位"
    end
  end 
  #條件驗證式開始
  validates :student_id,  :presence => true,
    :uniqueness => true,
    :length => {:minimum => 4, :maximum => 10}				  
  # 輸入學生id ,範圍由 xxxx-xxxxx 不可不填. 不可以有重複 				  
  validates :cname,  :presence => true, :on => :create
  #確保必填
  validates_length_of :cname, :in => 2..12, :allow_nil => false, :on => :update
  #:length => {:minimum => 2, :maximum => 12}
  # 中文姓名最少2個字,最多12個字	不可以不填
  validates :email, :presence => true, 
    :length => {:minimum => 3, :maximum => 254}  
  # 電子郵件最少3個字最多 254個字,不可以不填,可以有重複
  validates :ename,  :length => {:minimum => 2, :maximum => 254}
  #英文姓名最少淤三個字,最多254字. 可以不填				  
  validates :birthday,  :presence => true                  
  #生日不能不填				  
  validates :gender,  :presence => true
  #性別不能不填			  
  validates :address,  :presence => true, 
    :length => {:minimum => 2, :maximum => 254}  
				  
  validates :telephone, :length => {:minimum => 3, :maximum => 254}
  #電話欄位可以空白				  
  validates :mobile_phone,  :presence => true, 
    :length => {:minimum => 3, :maximum => 254}
  #行動欄位不可以空白   
  validates :sales,  :presence => true, 
     :length => {:minimum => 3, :maximum => 12}
				  
  validates :introduce,  :presence => true, 
    :length => {:minimum => 3, :maximum => 12} 
 
  ## 底下的是條件驗證式的錯誤訊息說明
  validates :student_id,  :presence => { :message => "學生號碼欄位不能空白" }, 
    :length => {:minimum => 4, :maximum => 10, :message => "學生號碼長度不正確" }
  #驗證學號		
  validates :cname,  :presence => { :message => "姓名欄位不能空白" }, 
    :length => {:minimum => 2, :maximum => 12, :message => "姓名欄位長度不正確" }
  #驗證姓名 		  
  validates :email,  :presence => { :message => "電子郵件欄位不能空白" }, 
    :length => {:minimum => 3, :maximum => 254, :message => "電子郵件欄位長度不正確" }
  #驗證電子郵件
  validates :birthday,  :presence => { :message => "生日欄位不能空白" }     
  #驗證生日
  validates :gender,  :presence => { :message => "姓別欄位不能空白" }
  #驗證姓別
  validates :address,  :presence => { :message => "住址欄位不能空白" }, 
    :length => {:minimum => 2, :maximum => 254, :message => "住址欄位長度不正確" }
  #驗證住址
  validates :telephone, :length => {:minimum => 3, :maximum => 14, :message => "電話欄位長度不正確" }
  #驗證電話
  validates :mobile_phone,  :presence => { :message => "行動電話欄位不能空白" }, 
    :length => {:minimum => 10, :maximum => 20, :message => "行動電話欄位長度不正確" }
  #驗證行動電話
 
  validates :sales,  :presence => { :message => "業務人員欄位不能空白" }, 
    :length => {:minimum => 3, :maximum => 12, :message => "業務人員欄位長度不正確" }
  #驗證業務人員
  validates :introduce,  :presence => { :message => "引介人員欄位不能空白" }, 
    :length => {:minimum => 3, :maximum => 12, :message => "引介人員欄位長度不正確" }
  #驗證引介人員

  #test
  public
  def self.testtest(test , test2 = "sdf") #使用在類別內
    all.each do |s|
      s.update_attribute("old" , s.old + 1)
    end
  end
  def testtest(test , test2 = "sdf") #使用在物件內, 沒有 = 的test 一定要給值, 有 = 的test2 可以給值也可不給值(若不給值則為預設值"sdf")
    puts "#{self.ename}#{self.cname}#{test}#{test2}"
  end
  
  def wer1(hello , ruby1 = "ruby")          #settter
    @xxx = "#{hello}#{ruby1}"
  end
  def wer2
    puts @xxx      #getter
  end
end