class Graduated < ActiveRecord::Base
  has_many :student_graduatedship
	has_many :student, :through => :student_graduatedship
end