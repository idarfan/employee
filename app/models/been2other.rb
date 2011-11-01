class Been2other < ActiveRecord::Base
   has_many :student_been2othership
	has_many :student, :through => :student_been2othership
end